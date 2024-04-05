import "package:flutter/material.dart";

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
    {required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: "Riverpod Counter",
    subTitle: "Introducción a Riverpod",
    link: "/counter",
    icon: Icons.add,
  ),

  MenuItem(
    title: "Botones",
    subTitle: "Varios botones en Flutter",
    link: "/buttons",
    icon: Icons.smart_button_outlined,
  ),

  MenuItem(
    title: "Tarjetas",
    subTitle: "Un contenedor estilizado",
    link: "/cards",
    icon: Icons.credit_card,
  ),

  MenuItem(
    title: "Indicadores de Progreso",
    subTitle: "Generales y Controlados",
    link: "/progress",
    icon: Icons.refresh_rounded,
  ),

  MenuItem(
    title: "Snackbars y Diálogos",
    subTitle: "Indicadores en pantalla",
    link: "/snackbars",
    icon: Icons.info_outlined,
  ),

  MenuItem(
    title: "Contenedor Animado",
    subTitle: "Stateful widget animado",
    link: "/animated",
    icon: Icons.check_box_outline_blank_rounded,
  ),

  MenuItem(
    title: "Controles UI + Titulos",
    subTitle: "Una serie de controles de Flutter",
    link: "/ui_controlls",
    icon: Icons.car_rental_outlined,
  ),

  MenuItem(
    title: "Introducción a la aplicación",
    subTitle: "Pequeño tutorial de introdución",
    link: "/tutorial",
    icon: Icons.accessibility_rounded,
  ),
  
  MenuItem(
    title: "Scroll Infinito y Pull",
    subTitle: "Vistas infinitas y pull to refresh",
    link: "/infinite",
    icon: Icons.list_alt_rounded,
  ),
  
  MenuItem(
    title: "Cambiar Tema",
    subTitle: "Cambiar tema de la aplicación",
    link: "/theme-changer",
    icon: Icons.color_lens_outlined,
  ),
];
