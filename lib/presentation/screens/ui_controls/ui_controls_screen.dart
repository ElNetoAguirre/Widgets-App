import "package:flutter/material.dart";

class UiControlsScreen extends StatelessWidget {
  static const name = "ui_controls_screen";

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Controles UI"),
      ),
      body: const _UiControllsView(),
    );
  }
}

class _UiControllsView extends StatefulWidget {
  const _UiControllsView();

  @override
  State<_UiControllsView> createState() => _UiControllsViewState();
}

enum Transportation { carro, avion, barco, submarino }

class _UiControllsViewState extends State<_UiControllsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.carro;
  bool wantsBreakefast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text("Modo Desarrollador"),
          subtitle: const Text("Controles adicionales"),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text("Vehículo de transporte"),
          subtitle: Text("$selectedTransportation"),
          children: [
            RadioListTile(
              title: const Text("En carro"),
              subtitle: const Text("Viajar en carro"),
              value: Transportation.carro,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.carro;
              }),
            ),

            RadioListTile(
              title: const Text("En avión"),
              subtitle: const Text("Viajar en avión"),
              value: Transportation.avion,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.avion;
              }),
            ),

            RadioListTile(
              title: const Text("En barco"),
              subtitle: const Text("Viajar en barco"),
              value: Transportation.barco,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.barco;
              }),
            ),

            RadioListTile(
              title: const Text("En submarino"),
              subtitle: const Text("Viajar en submarino"),
              value: Transportation.submarino,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarino;
              }),
            ),
          ],
        ),
        
        CheckboxListTile(
          title: const Text("¿Desayuno?"),
          value: wantsBreakefast,
          onChanged: (value) => setState(() {
            wantsBreakefast = !wantsBreakefast;
          }),
        ),

        CheckboxListTile(
          title: const Text("¿Comida?"),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),

        CheckboxListTile(
          title: const Text("¿Cena?"),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
