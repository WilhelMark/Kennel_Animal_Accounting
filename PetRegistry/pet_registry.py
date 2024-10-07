# Задание 13: Создание классов с инкапсуляцией и наследованием

class Animal:
    def __init__(self, name, age):
        self.__name = name  # Инкапсуляция: имя животного
        self.__age = age    # Инкапсуляция: возраст животного
        self.__commands = []  # Список команд, которые выполняет животное

    def get_name(self):
        return self.__name

    def get_age(self):
        return self.__age

    def add_command(self, command):
        self.__commands.append(command)

    def get_commands(self):
        return self.__commands


class DomesticAnimal(Animal):
    def __init__(self, name, age):
        super().__init__(name, age)  # Вызов конструктора родительского класса


class Horse(Animal):
    def __init__(self, name, age):
        super().__init__(name, age)


class Dog(DomesticAnimal):
    def __init__(self, name, age):
        super().__init__(name, age)


class Cat(DomesticAnimal):
    def __init__(self, name, age):
        super().__init__(name, age)


class Hamster(DomesticAnimal):
    def __init__(self, name, age):
        super().__init__(name, age)

# Задание 14: Программа для работы с реестром домашних животных

def main_menu():
    animals = []
    while True:
        print("\nМеню:")
        print("1. Завести новое животное")
        print("2. Посмотреть список животных")
        print("3. Обучить животное новым командам")
        print("4. Выход")
        
        choice = input("Выберите опцию: ")

        if choice == '1':
            add_animal(animals)
        elif choice == '2':
            list_animals(animals)
        elif choice == '3':
            train_animal(animals)
        elif choice == '4':
            break
        else:
            print("Некорректный выбор. Попробуйте снова.")

def add_animal(animals):
    name = input("Введите имя животного: ")
    age = int(input("Введите возраст животного: "))
    
    animal_type = input("Введите тип животного (собака/кошка/хомяк/лошадь): ").lower()
    
    if animal_type == 'собака':
        animals.append(Dog(name, age))
    elif animal_type == 'кошка':
        animals.append(Cat(name, age))
    elif animal_type == 'хомяк':
        animals.append(Hamster(name, age))
    elif animal_type == 'лошадь':
        animals.append(Horse(name, age))
    else:
        print("Некорректный тип животного.")

def list_animals(animals):
    if not animals:
        print("Список животных пуст.")
    else:
        for animal in animals:
            print(f"Имя: {animal.get_name()}, Возраст: {animal.get_age()}")

def train_animal(animals):
    name = input("Введите имя животного для обучения: ")
    
    for animal in animals:
        if animal.get_name() == name:
            command = input("Введите команду для обучения: ")
            animal.add_command(command)
            print(f"{name} обучен команде '{command}'.")
            return
    
    print(f"Животное с именем {name} не найдено.")

# Задание 15: Создание класса Счетчик

class Counter:
    def __init__(self):
        self.count = 0

    def add(self):
        self.count += 1

    def get_count(self):
        return self.count

# Использование счетчика в основном меню
def main_menu():
    animals = []
    counter = Counter()  # Создаем объект счетчика
    while True:
        print("\nМеню:")
        print("1. Завести новое животное")
        print("2. Посмотреть список животных")
        print("3. Обучить животное новым командам")
        print("4. Выход")
        
        choice = input("Выберите опцию: ")

        if choice == '1':
            add_animal(animals, counter)  # Передаем счетчик
        elif choice == '2':
            list_animals(animals)
        elif choice == '3':
            train_animal(animals)
        elif choice == '4':
            break
        else:
            print("Некорректный выбор. Попробуйте снова.")

def add_animal(animals, counter):  # Принимаем счетчик как аргумент
    name = input("Введите имя животного: ")
    age = int(input("Введите возраст животного: "))
    
    animal_type = input("Введите тип животного (собака/кошка/хомяк/лошадь): ").lower()
    
    if animal_type == 'собака':
        animals.append(Dog(name, age))
    elif animal_type == 'кошка':
        animals.append(Cat(name, age))
    elif animal_type == 'хомяк':
        animals.append(Hamster(name, age))
    elif animal_type == 'лошадь':
        animals.append(Horse(name, age))
    
    counter.add()  # Увеличиваем счетчик