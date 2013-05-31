define add-prebuilt-apk-file
    $(eval $(include-prebuilt-apk))
endef

define include-prebuilt-apk
    include $$(CLEAR_VARS)
    LOCAL_MODULE := $$(notdir $(1))
		LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_CLASS := ETC
		LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)
    LOCAL_SRC_FILES := $(1)
    include $$(BUILD_PREBUILT)
endef

define add-prebuilt-apk-files
$(foreach f,$(1), $(call add-prebuilt-apk-file,$f))
endef


LOCAL_PATH := $(call my-dir)

LIST_APK := \
		system/app/FOTAKill.apk \
    system/app/GenieWidget.apk \
    system/app/Gmail.apk \
    system/app/GoogleBackupTransport.apk \
    system/app/GoogleCalendarSyncAdapter.apk \
    system/app/GoogleContactsSyncAdapter.apk \
    system/app/GoogleFeedback.apk \
    system/app/GooglePartnerSetup.apk \
    system/app/GoogleQuickSearchBox.apk \
    system/app/GoogleServicesFramework.apk \
		system/app/ServiceGooglePlay.apk \
    system/app/LatinImeTutorial.apk \
    system/app/MarketUpdater.apk \
    system/app/MediaUploader.apk \
    system/app/NetworkLocation.apk \
    system/app/OneTimeInitializer.apk \
    system/app/SetupWizard.apk \
    system/app/Talk2.apk \
    system/app/Vending.apk \


$(call add-prebuilt-apk-files, $(LIST_APK))

