import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class SnackbarScreen extends StatelessWidget {
  static const name = "snackbar_screen";

  const SnackbarScreen({super.key});

  void showCustomeSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text("Hola Mundo"),
      action: SnackBarAction(label: "Ok!!!", onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text("¿Estás seguro?", textAlign: TextAlign.center),
        content: const Text("Et ullamco nisi duis officia ad exercitation nostrud laboris ipsum cupidatat culpa. Nostrud minim ipsum incididunt aliquip labore incididunt veniam fugiat qui cillum dolor anim veniam incididunt. Voluptate fugiat voluptate nulla quis minim do nulla irure duis eiusmod exercitation sunt. Incididunt labore ex cupidatat ea veniam cillum consequat cupidatat elit eu elit sit cillum. Dolore velit proident veniam sint id pariatur aliquip ad commodo ipsum cupidatat. Nisi aliquip occaecat non ad do enim. Est enim sunt occaecat eu ipsum eiusmod laboris Lorem proident."),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text("Cancelar")),
          FilledButton(onPressed: () => context.pop(), child: const Text("Aceptar")),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars y Diálogos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text(
                      "Voluptate elit consectetur dolor nostrud tempor voluptate cupidatat. Dolore excepteur enim consequat id excepteur est sint nisi reprehenderit ea. Enim voluptate pariatur voluptate do veniam enim magna proident Lorem ullamco. Et qui deserunt eiusmod consectetur est est cillum amet non pariatur aliqua. Mollit fugiat nisi est id dolore Lorem qui aliqua exercitation. Laboris et consectetur exercitation sint."
                    )
                  ],
                );
              },
              child: const Text("Licencias Usadas")
            ),

            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text("Mostrar Diálogo")
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Mostrar Snackbar"),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomeSnackbar(context),
      ),
    );
  }
}
