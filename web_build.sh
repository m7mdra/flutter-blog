if
   cd flutter;
then
   git pull
   cd .. ;
   else
     git clone https://github.com/flutter/flutter.git -b master;
     fi
  flutter/bin/flutter pub upgrade
  flutter/bin/flutter config --enable-web
  flutter/bin/flutter build web --release --dart-define=FLUTTER_WEB_USE_EXPERIMENTAL_CANVAS_TEXT=true