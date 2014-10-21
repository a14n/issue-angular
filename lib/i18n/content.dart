/// librairie contenant les messages specifiques au contenu genere depuis le backoffice.
/// l'internationnalisation de l'interface doit aller dans un autre ficher
library mypub_admin.i18n.content;

import 'package:intl/intl.dart';

String title() => Intl.message(
    "title",
    name: "title",
    args: [],
    desc: "my title");
