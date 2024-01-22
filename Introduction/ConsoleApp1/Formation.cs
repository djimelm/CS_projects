internal class Formation
{
    private static void Main(string[] args)
    {
        // Trim
        string greeting = "      Hello World!       ";
        Console.WriteLine($"[{greeting}]");

        string trimmedGreeting = greeting.TrimStart();
        Console.WriteLine($"[{trimmedGreeting}]");

        trimmedGreeting = greeting.TrimEnd();
        Console.WriteLine($"[{trimmedGreeting}]");

        trimmedGreeting = greeting.Trim();
        Console.WriteLine($"[{trimmedGreeting}]\n");


        /*****Remplace*/
        string sayHello = "Hello World!";
        Console.WriteLine(sayHello);
        sayHello = sayHello.Replace("Hello", "Greetings");
        Console.WriteLine(sayHello);

        // upper and lower case
        Console.WriteLine(sayHello.ToUpper());
        Console.WriteLine(sayHello.ToLower());


        /*searching a String */
        string songLyrics = "You say goodbye, and I say hello";
        Console.WriteLine(songLyrics.Contains("goodbye"));
        Console.WriteLine(songLyrics.Contains("greetings"));
    }
}