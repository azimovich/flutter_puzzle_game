gen:
    dart run build_runner build

gen_auto:
        dart run build_runner watch --delete-conflicting-outputs

clean:
   flutter clean
   flutter pub get

build_ios:
   flutter clean
   flutter build ios

build_android:
   flutter clean
   flutter build apk --split-per-abi

fix_ios:
   cd ios; pod cache clean --all; pod clean; pod deintegrate; sudo gem install cocoapods-deintegrate cocoapods-clean; sudo arch -x86_64 gem install ffi; arch -x86_64 pod repo update; arch -x86_64 pod install
