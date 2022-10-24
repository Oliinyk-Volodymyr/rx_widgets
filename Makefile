

cleanup:
	fvm flutter clean
	fvm flutter pub get

flutter:
	fvm flutter clean
	fvm flutter pub get

upgrade:
	fvm flutter packages upgrade

ios: flutter
	cd ios ; pod install

install:
	@echo "╠ -------------------------- START ---------------------------"
	@echo "╠ -------------- Install project and workflow ----------------"
	fvm flutter pub get
	fvm flutter pub global activate devtools
	@echo "╠ -------------------------- FINISH ---------------------------"

clean:
	@echo "╠ -------------------------- START ---------------------------"
	@echo "╠ ---------------------- Clean project -----------------------"
	fvm flutter packages pub get run build_runner clean
	fvm flutter pub cache clean
	rm -r pubspec.lock
	fvm flutter clean
	@echo "╠ -------------------------- FINISH ---------------------------"

analyze:
	@echo "╠ -------------------------- START -----------------------------"
	@echo "╠ --------------------- Analyze project ------------------------"
	fvm flutter analyze
	fvm flutter pub outdated
	@echo "╠ -------------------------- FINISH ----------------------------"