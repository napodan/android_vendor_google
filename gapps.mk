PRODUCT_PACKAGES += \
		FOTAKill.apk \
    GenieWidget.apk \
    Gmail.apk \
    GoogleBackupTransport.apk \
    GoogleCalendarSyncAdapter.apk \
    GoogleContactsSyncAdapter.apk \
    GoogleFeedback.apk \
    GooglePartnerSetup.apk \
    GoogleQuickSearchBox.apk \
    GoogleServicesFramework.apk \
    LatinImeTutorial.apk \
    MarketUpdater.apk \
    MediaUploader.apk \
    NetworkLocation.apk \
    OneTimeInitializer.apk \
		ServiceGooglePlay.apk \
    SetupWizard.apk \
    Vending.apk \
 
# Google Apps
PRODUCT_COPY_FILES += \
    vendor/google/system/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/google/system/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/google/system/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/google/system/lib/libtalk_jni.so:system/lib/libtalk_jni.so

