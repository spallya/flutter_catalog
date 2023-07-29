# flutter_catalog

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



```
//String query = "((field1 & field2) | field3) & field4 | (field5 & field6) & field7";
private Criteria resolveQuery(Map<String, Criteria> map, String query) {
        Stack<Object> stack = new Stack<>();
        Criteria finalCriteria = null;
        char operation = ' ';
        Set<Character> invalidChars = new HashSet<>();
        invalidChars.add(' ');
        invalidChars.add('|');
        invalidChars.add('&');
        invalidChars.add('(');
        invalidChars.add(')');

        for (int i = 0; i < query.length(); i++) {
            char c1 = query.charAt(i);
            if (!invalidChars.contains(query.charAt(i))) {
                StringBuilder builder = new StringBuilder();
                while (i < query.length() && !invalidChars.contains(query.charAt(i))) {
                    builder.append(query.charAt(i));
                    i++;
                }
                if (operation == ' ') {
                    finalCriteria = map.get(builder.toString());
                } else if (operation == '&') {
                    finalCriteria = doAnd(finalCriteria, map.get(builder.toString()));
                } else {
                    finalCriteria = doOr(finalCriteria, map.get(builder.toString()));
                }
                i--;
            } else if (query.charAt(i) == '&') {
                operation = '&';
            } else if (query.charAt(i) == '|') {
                operation = '|';
            } else if (query.charAt(i) == '(') {
                if (finalCriteria != null && operation != ' ') {

                    stack.push(finalCriteria);
                    stack.push(operation);
                    finalCriteria = null;
                    operation = ' ';
                }
            } else if (query.charAt(i) == ')') {
                if (!stack.isEmpty()) {
                    Object pop = stack.pop();
                    if (pop instanceof Character && ((char) pop) == '|') {
                        Object pop1 = stack.pop();
                        if (pop1 instanceof Criteria) {
                            Criteria c = (Criteria) pop1;
                            finalCriteria = doOr(finalCriteria, c);
                        }
                    } else if (pop instanceof Character && ((char) pop) == '&') {
                        Object pop1 = stack.pop();
                        if (pop1 instanceof Criteria) {
                            Criteria c = (Criteria) pop1;
                            finalCriteria = doAnd(finalCriteria, c);
                        }
                    }
                }

            }
        }
        return finalCriteria;
    }

    private Criteria doAnd(Criteria... c) {
        return new Criteria().andOperator(c);
    }

    private Criteria doOr(Criteria... c) {
        return new Criteria().orOperator(c);
    }

```
