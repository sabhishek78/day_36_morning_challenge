import 'package:test/test.dart';
import '../bin/main.dart';

void main() {

  test('Acoounts Merge', () {                                 // will merge
    expect(accountsMerge([["Abhishek", "a@gmail.com"],
      ["Abhishek","a@gmail.com","b@gmail.com"],
      ]),
        [["Abhishek", "a@gmail.com","b@gmail.com"]]);
  });
  test('Acoounts Merge', () {                               // will not merge
    expect(accountsMerge([["Abhishek", "a@gmail.com"],
      ["Abhishek","b@gmail.com"],
    ]),
        [["Abhishek", "a@gmail.com"],["Abhishek","b@gmail.com"]]);
  });
  test('Acoounts Merge', () {                               // will not merge
    expect(
        accountsMerge([
          ['john', 'a', 'b'],
          ['john', 'a', 'b'],
          ['john', 'a', 'b'],
          ['john', 'c', 'd'],
          ['john', 'b', 'c'],
          ['john', 'e', 'd'],
          ['john', 'e', 'f'],
          ["Mary", "mary@mail.com"]
        ]),
        [
          ['john', 'a', 'b', 'c', 'd', 'e', 'f'],
          ['Mary', 'mary@mail.com']
        ]);

  });
}
