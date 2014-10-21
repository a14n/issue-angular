import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';
import 'package:intl/intl_browser.dart' show findSystemLocale;
import 'package:issue_angular/i18n/generated/content_messages_all.dart';

@Component(selector: 'my-component',
    template: '<table><thead><tr><th>header</th></tr></thead></table>')
class MyComponent {
}

void main() {
  findSystemLocale().then((_){
    initializeMessages('fr').then((_) {
      applicationFactory().addModule(new Module()
        ..bind(MyComponent)
      ).run();
    });
  });
}