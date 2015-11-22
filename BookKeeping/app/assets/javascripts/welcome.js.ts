interface IService {
    greeting(): string;
}

class Greet implements IService {
    name: string = 'Yakuza';
    greeting(): string {
        return 'Hello my name is ' + name;
    }
}
