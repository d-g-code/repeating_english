"""
Repeating English 1.0
- coloring answer

"""

from termcolor import colored

sentence = {'He drinks milk twice a day': 'On pije mleko dwa razy dziennie',
            'We go to work six times a week': 'Chodzimy do pracy przez sześć dni w tygodniu',
            'She likes him very much': 'Ona go bardzo lubi',
            'I always feel great in spring': 'Zawsze na wiosnę czuję się świetnie',
            'They always go swimming at weekends': 'Oni zawsze chodzą popływać w weekendy'
            }

while True:
    for key, value in sentence.items():
        term = input('Break press N ')
        if term.lower() == 'n':
            break
        print(value)
        user_answer = input()
        if user_answer == key:
            print(colored('GOOD', 'green'))
        else:
            print(colored('BAD', 'red'))
            print(colored(key, 'green'))
            print(colored(user_answer, 'blue'))
