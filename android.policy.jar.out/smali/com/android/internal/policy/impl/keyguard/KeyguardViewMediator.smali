.class public Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$8;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$InvalidDialogCallback;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ServiceBinder;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    }
.end annotation


# static fields
.field private static final ALARM_BOOT:I = 0x73

.field protected static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final DBG_MESSAGE:Z = true

.field private static final DBG_WAKE:Z = true

.field static final DEBUG:Z = true

.field private static final DELAYED_KEYGUARD_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

.field private static final ENABLE_INSECURE_STATUS_BAR_EXPAND:Z = false

.field private static final HIDE:I = 0x3

.field public static final IPO_DISABLE:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final KEYGUARD_DISPLAY_TIMEOUT_DELAY_DEFAULT:I = 0x7530

.field private static final KEYGUARD_DONE:I = 0x9

.field private static final KEYGUARD_DONE_AUTHENTICATING:I = 0xb

.field private static final KEYGUARD_DONE_DRAWING:I = 0xa

.field private static final KEYGUARD_DONE_DRAWING_TIMEOUT_MS:I = 0x7d0

.field private static final KEYGUARD_LOCK_AFTER_DELAY_DEFAULT:I = 0x1388

.field private static final KEYGUARD_RELAYOUT:I = 0x3e8

.field private static final KEYGUARD_TIMEOUT:I = 0xd

.field private static final LAUNCH_PWROFF_ALARM:Ljava/lang/String; = "android.intent.action.LAUNCH_POWEROFF_ALARM"

.field private static final MSG_DM_KEYGUARD_UPDATE:I = 0x3e9

.field private static final NORMAL_BOOT_ACTION:Ljava/lang/String; = "android.intent.action.normal.boot"

.field private static final NORMAL_BOOT_DONE_ACTION:Ljava/lang/String; = "android.intent.action.normal.boot.done"

.field private static final NORMAL_SHUTDOWN_ACTION:Ljava/lang/String; = "android.intent.action.normal.shutdown"

.field private static final NOTIFY_SCREEN_OFF:I = 0x6

.field private static final NOTIFY_SCREEN_ON:I = 0x7

.field public static final OMADM_LAWMO_LOCK:Ljava/lang/String; = "com.mediatek.dm.LAWMO_LOCK"

.field public static final OMADM_LAWMO_UNLOCK:Ljava/lang/String; = "com.mediatek.dm.LAWMO_UNLOCK"

.field static final REMOVE_IPOWIN:Ljava/lang/String; = "alarm.boot.remove.ipowin"

.field private static final RESET:I = 0x4

.field public static final RESET_FOR_DM_LOCK:Ljava/lang/String; = "dmlock_reset"

.field private static final RESHOW_ANYWHERE:I = 0x74

.field private static final SET_HIDDEN:I = 0xc

.field private static final SHOW:I = 0x2

.field private static final SHOW_ASSISTANT:I = 0xe

.field private static final TAG:Ljava/lang/String; = "KeyguardViewMediator"

.field private static final VERIFY_UNLOCK:I = 0x5

.field private static final WAKE_WHEN_READY:I = 0x8

.field private static mExternallyEnabled:Z

.field private static mHidden:Z

.field private static mShowing:Z

.field private static sWakeMSGId:I


# instance fields
.field private final BOOT_COMPLETED:Ljava/lang/String;

.field private final PREBOOT_IPO:Ljava/lang/String;

.field private final RETRY_BIND_TO_WATERWAVE:I

.field booleanWaterWave:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDelayedShowingSequence:I

.field private mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

.field private mHandler:Landroid/os/Handler;

.field private mIsIPOBoot:Z

.field private mKeyguardDonePending:Z

.field private mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private final mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamType:I

.field private mNeedToReshowWhenReenabled:Z

.field private mNoNeedForceShowWaterWaveLock:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneState:Ljava/lang/String;

.field private mSb:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ServiceBinder;

.field private mScreenOn:Z

.field private mService:Lcom/android/internal/policy/impl/ILockWindowService;

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowLockIcon:Z

.field private mShowingLockIcon:Z

.field private mSimCardLocked:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSuppressNextLockSound:Z

.field private mSystemReady:Z

.field private mUnlockSoundId:I

.field mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPresentIntent:Landroid/content/Intent;

.field mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

.field private final osc:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 227
    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 230
    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    .line 278
    sput v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sWakeMSGId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 10
    .parameter "context"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsIPOBoot:Z

    .line 186
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 223
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 252
    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 263
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 265
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 281
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->booleanWaterWave:Z

    .line 282
    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mService:Lcom/android/internal/policy/impl/ILockWindowService;

    .line 283
    const/16 v5, 0xf

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->RETRY_BIND_TO_WATERWAVE:I

    .line 284
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSimCardLocked:Z

    .line 285
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNoNeedForceShowWaterWaveLock:Z

    .line 457
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 667
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 822
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->osc:Landroid/content/ServiceConnection;

    .line 1525
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1666
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v5, p0, v8, v9, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 2309
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->BOOT_COMPLETED:Ljava/lang/String;

    .line 2310
    const-string v5, "android.intent.action.ACTION_PREBOOT_IPO"

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->PREBOOT_IPO:Ljava/lang/String;

    .line 724
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 725
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 726
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v8, "user"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    .line 727
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v8, "show keyguard"

    invoke-virtual {v5, v6, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 728
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 730
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v8, "keyguardWakeAndHandOff"

    invoke-virtual {v5, v6, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    .line 731
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 741
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 742
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 744
    const-string v5, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    const-string v5, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 749
    const-string v5, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 750
    const-string v5, "android.intent.action.normal.shutdown"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 751
    const-string v5, "android.intent.action.LAUNCH_POWEROFF_ALARM"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 752
    const-string v5, "android.intent.action.normal.boot"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 754
    const-string v5, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 756
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 758
    const-string v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 760
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 762
    if-eqz p2, :cond_6

    .end local p2
    :goto_0
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 764
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 766
    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 768
    .local v4, wm:Landroid/view/WindowManager;
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1, v4, v8, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .line 770
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    .line 771
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    const/high16 v8, 0x2800

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 774
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 775
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v5, "show_status_bar_lock"

    invoke-static {v0, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_7

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowLockIcon:Z

    .line 777
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 779
    new-instance v5, Landroid/media/SoundPool;

    invoke-direct {v5, v6, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 780
    const-string v5, "lock_sound"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 781
    .local v3, soundPath:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 782
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v5, v3, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 784
    :cond_0
    if-eqz v3, :cond_1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundId:I

    if-nez v5, :cond_2

    .line 785
    :cond_1
    const-string v5, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to load lock sound from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_2
    const-string v5, "unlock_sound"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 788
    if-eqz v3, :cond_3

    .line 789
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v5, v3, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    .line 791
    :cond_3
    if-eqz v3, :cond_4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v5, :cond_5

    .line 792
    :cond_4
    const-string v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to load unlock sound from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 796
    .local v2, lockSoundDefaultAttenuation:I
    const-wide/high16 v5, 0x4024

    int-to-float v7, v2

    const/high16 v8, 0x41a0

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    .line 797
    return-void

    .line 762
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #lockSoundDefaultAttenuation:I
    .end local v3           #soundPath:Ljava/lang/String;
    .end local v4           #wm:Landroid/view/WindowManager;
    .restart local p2
    :cond_6
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    .end local p2
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {p2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v4       #wm:Landroid/view/WindowManager;
    :cond_7
    move v5, v7

    .line 775
    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/ILockWindowService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mService:Lcom/android/internal/policy/impl/ILockWindowService;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/impl/ILockWindowService;)Lcom/android/internal/policy/impl/ILockWindowService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mService:Lcom/android/internal/policy/impl/ILockWindowService;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsIPOBoot:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->hideLocked()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleReset(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleWakeWhenReady(II)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardDone(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleSetHidden(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardReLayout(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleAlarmBoot()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleDMKeyguardUpdate(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->showWaterWaveLock()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendRemoveIPOWinBroadcast()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->startAlarm()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNoNeedForceShowWaterWaveLock:Z

    return p1
.end method

.method private adjustStatusBarLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1965
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_0

    .line 1966
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1969
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_2

    .line 1970
    const-string v3, "KeyguardViewMediator"

    const-string v4, "Could not get status bar manager"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    :cond_1
    :goto_0
    return-void

    .line 1975
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    .line 1977
    .local v2, isSecure:Z
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowLockIcon:Z

    if-eqz v3, :cond_3

    .line 1979
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 1980
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    if-nez v3, :cond_3

    .line 1981
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const v4, 0x1040508

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1983
    .local v0, contentDescription:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v4, "secure"

    const v5, 0x1080565

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1986
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    .line 1998
    .end local v0           #contentDescription:Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 1999
    .local v1, flags:I
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v3, :cond_4

    .line 2003
    const/high16 v3, 0x100

    or-int/2addr v1, v3

    .line 2020
    :cond_4
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustStatusBarLocked: mShowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mHidden="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSecure="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " --> flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 2025
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 1989
    .end local v1           #flags:I
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    if-eqz v3, :cond_3

    .line 1990
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v4, "secure"

    invoke-virtual {v3, v4}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 1991
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    goto :goto_1
.end method

.method private cancelDoKeyguardLaterLocked()V
    .locals 1

    .prologue
    .line 1044
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 1045
    return-void
.end method

.method private createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    .line 2257
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2270
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 2271
    return-object v0
.end method

.method private doKeyguardLaterLocked()V
    .locals 17

    .prologue
    .line 999
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1002
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v14, "screen_off_timeout"

    const/16 v15, 0x7530

    invoke-static {v1, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    int-to-long v2, v14

    .line 1006
    .local v2, displayTimeout:J
    const-string v14, "lock_screen_lock_after_timeout"

    const/16 v15, 0x1388

    invoke-static {v1, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    int-to-long v5, v14

    .line 1011
    .local v5, lockAfterTimeout:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v7

    .line 1015
    .local v7, policyTimeout:J
    const-wide/16 v14, 0x0

    cmp-long v14, v7, v14

    if-lez v14, :cond_0

    .line 1017
    const-wide/16 v14, 0x0

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1018
    sub-long v14, v7, v2

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 1023
    .local v10, timeout:J
    :goto_0
    const-string v14, "KeyguardViewMediator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "doKeyguardLaterLocked enter displayTimeout="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", lockAfterTimeout="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", policyTimeout="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", timeout="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-gtz v14, :cond_1

    .line 1028
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1029
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    .line 1041
    :goto_1
    return-void

    .line 1020
    .end local v10           #timeout:J
    :cond_0
    move-wide v10, v5

    .restart local v10       #timeout:J
    goto :goto_0

    .line 1032
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    add-long v12, v14, v10

    .line 1033
    .local v12, when:J
    new-instance v4, Landroid/content/Intent;

    const-string v14, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v4, intent:Landroid/content/Intent;
    const-string v14, "seq"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1035
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/high16 v16, 0x1000

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1037
    .local v9, sender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v15, 0x2

    invoke-virtual {v14, v15, v12, v13, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1038
    const-string v14, "KeyguardViewMediator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setting alarm to turn off keyguard, seq = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private doKeyguardLocked()V
    .locals 1

    .prologue
    .line 1240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 1241
    return-void
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .locals 23
    .parameter "options"

    .prologue
    .line 1249
    const-string v20, "KeyguardViewMediatorzxz"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "query is alarm boot value = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    sget-boolean v20, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v20, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1251
    :cond_0
    const-string v20, "KeyguardViewMediator"

    const-string v21, "doKeyguard: not showing because externally disabled"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    :goto_0
    return-void

    .line 1266
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->isShowing()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1267
    const-string v20, "KeyguardViewMediator"

    const-string v21, "doKeyguard: not showing because it is already showing"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1272
    :cond_2
    const-string v20, "KeyguardViewMediator"

    const-string v21, "doKeyguard: get keyguard.no_require_sim property before"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    const-string v20, "keyguard.no_require_sim"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_b

    const/4 v10, 0x1

    .line 1274
    .local v10, requireSim:Z
    :goto_1
    const-string v20, "KeyguardViewMediator"

    const-string v21, "doKeyguard: get keyguard.no_require_sim property after"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v9

    .line 1276
    .local v9, provisioned:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v17

    .line 1277
    .local v17, state:Lcom/android/internal/telephony/IccCardConstants$State;
    const/4 v7, 0x0

    .line 1278
    .local v7, lockedOrMissing:Z
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v20

    if-eqz v20, :cond_14

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v18

    .line 1288
    .local v18, stateGemini:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v20, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v20

    if-eqz v20, :cond_4

    :cond_3
    sget-object v20, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v20

    if-nez v20, :cond_c

    :cond_4
    const/16 v16, 0x1

    .line 1291
    .local v16, simPIN:Z
    :goto_2
    sget-object v20, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v20

    if-eqz v20, :cond_6

    :cond_5
    sget-object v20, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v20

    if-nez v20, :cond_d

    :cond_6
    const/4 v11, 0x1

    .line 1295
    .local v11, simGeminiPIN:Z
    :goto_3
    if-nez v16, :cond_7

    sget-object v20, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_e

    if-eqz v10, :cond_e

    :cond_7
    const/4 v15, 0x1

    .line 1296
    .local v15, simLockedOrMissing:Z
    :goto_4
    if-nez v11, :cond_8

    sget-object v20, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_f

    if-eqz v10, :cond_f

    :cond_8
    const/4 v12, 0x1

    .line 1297
    .local v12, simGeminilockedOrMissing:Z
    :goto_5
    if-nez v15, :cond_9

    if-eqz v12, :cond_10

    :cond_9
    const/4 v7, 0x1

    .line 1300
    :goto_6
    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getRetryPukCount(I)I

    move-result v20

    if-eqz v20, :cond_11

    const/4 v13, 0x1

    .line 1301
    .local v13, simLocked:Z
    :goto_7
    if-eqz v11, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getRetryPukCount(I)I

    move-result v20

    if-eqz v20, :cond_12

    const/4 v14, 0x1

    .line 1302
    .local v14, simLockedGemini:Z
    :goto_8
    if-nez v13, :cond_a

    if-eqz v14, :cond_13

    :cond_a
    const/16 v20, 0x1

    :goto_9
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSimCardLocked:Z

    .line 1318
    .end local v11           #simGeminiPIN:Z
    .end local v12           #simGeminilockedOrMissing:Z
    .end local v13           #simLocked:Z
    .end local v14           #simLockedGemini:Z
    .end local v15           #simLockedOrMissing:Z
    .end local v18           #stateGemini:Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_a
    const-string v20, "KeyguardViewMediator"

    const-string v21, "doKeyguard: get sim state after"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const/4 v6, 0x0

    .line 1327
    .local v6, keyguardDisable:Z
    const/4 v8, 0x1

    .line 1328
    .local v8, motaUpdateFirst:Z
    if-eqz v8, :cond_1c

    .line 1330
    const-string v20, "KeyguardViewMediator"

    const-string v21, "doKeyguard: motaUpdateFirst"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v6

    .line 1332
    const-string v20, "KeyguardViewMediator"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "doKeyguard: keyguardDisable = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenWaterWave()Z

    move-result v5

    .line 1335
    .local v5, isWaterWaveEnable:Z
    const-string v20, "KeyguardViewMediator"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "doKeyguard: isWaterWaveEnable before = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",mSimCardLocked="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSimCardLocked:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    if-eqz v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v20

    if-nez v20, :cond_1b

    const/16 v20, 0x1

    :goto_b
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->booleanWaterWave:Z

    .line 1337
    const-string v20, "KeyguardViewMediator"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "doKeyguard: booleanWaterWave after = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->booleanWaterWave:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",mSimCardLocked="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSimCardLocked:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    .end local v5           #isWaterWaveEnable:Z
    :goto_c
    const-string v20, "KeyguardViewMediator"

    const-string v21, "doKeyguard: keyguardDisable query end"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v4

    .line 1364
    .local v4, dmLocked:Z
    const-string v20, "KeyguardViewMediator"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "lockedOrMissing is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", requireSim="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", provisioned="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", keyguardisable="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", dmLocked="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    if-nez v7, :cond_20

    if-nez v9, :cond_20

    if-nez v4, :cond_20

    .line 1368
    const-string v20, "KeyguardViewMediator"

    const-string v21, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1273
    .end local v4           #dmLocked:Z
    .end local v6           #keyguardDisable:Z
    .end local v7           #lockedOrMissing:Z
    .end local v8           #motaUpdateFirst:Z
    .end local v9           #provisioned:Z
    .end local v10           #requireSim:Z
    .end local v16           #simPIN:Z
    .end local v17           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1288
    .restart local v7       #lockedOrMissing:Z
    .restart local v9       #provisioned:Z
    .restart local v10       #requireSim:Z
    .restart local v17       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v18       #stateGemini:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1291
    .restart local v16       #simPIN:Z
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1295
    .restart local v11       #simGeminiPIN:Z
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 1296
    .restart local v15       #simLockedOrMissing:Z
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 1297
    .restart local v12       #simGeminilockedOrMissing:Z
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 1300
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 1301
    .restart local v13       #simLocked:Z
    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_8

    .line 1302
    .restart local v14       #simLockedGemini:Z
    :cond_13
    const/16 v20, 0x0

    goto/16 :goto_9

    .line 1309
    .end local v11           #simGeminiPIN:Z
    .end local v12           #simGeminilockedOrMissing:Z
    .end local v13           #simLocked:Z
    .end local v14           #simLockedGemini:Z
    .end local v15           #simLockedOrMissing:Z
    .end local v16           #simPIN:Z
    .end local v18           #stateGemini:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_14
    sget-object v20, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v20

    if-eqz v20, :cond_16

    :cond_15
    sget-object v20, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v20

    if-nez v20, :cond_18

    :cond_16
    const/16 v16, 0x1

    .line 1313
    .restart local v16       #simPIN:Z
    :goto_d
    if-nez v16, :cond_17

    sget-object v20, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_19

    if-eqz v10, :cond_19

    :cond_17
    const/4 v7, 0x1

    .line 1315
    :goto_e
    if-eqz v16, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getRetryPukCount(I)I

    move-result v20

    if-eqz v20, :cond_1a

    const/16 v20, 0x1

    :goto_f
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSimCardLocked:Z

    goto/16 :goto_a

    .line 1309
    .end local v16           #simPIN:Z
    :cond_18
    const/16 v16, 0x0

    goto :goto_d

    .line 1313
    .restart local v16       #simPIN:Z
    :cond_19
    const/4 v7, 0x0

    goto :goto_e

    .line 1315
    :cond_1a
    const/16 v20, 0x0

    goto :goto_f

    .line 1336
    .restart local v5       #isWaterWaveEnable:Z
    .restart local v6       #keyguardDisable:Z
    .restart local v8       #motaUpdateFirst:Z
    :cond_1b
    const/16 v20, 0x0

    goto/16 :goto_b

    .line 1341
    .end local v5           #isWaterWaveEnable:Z
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1342
    .local v3, cr:Landroid/content/ContentResolver;
    const-string v20, "lockscreen.disabled"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1343
    .local v19, value:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1344
    .local v2, booleanValue:Z
    if-eqz v19, :cond_1d

    .line 1345
    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e

    const/4 v2, 0x1

    .line 1347
    :cond_1d
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v20

    if-nez v20, :cond_1f

    if-eqz v2, :cond_1f

    const/4 v6, 0x1

    :goto_11
    goto/16 :goto_c

    .line 1345
    :cond_1e
    const/4 v2, 0x0

    goto :goto_10

    .line 1347
    :cond_1f
    const/4 v6, 0x0

    goto :goto_11

    .line 1378
    .end local v2           #booleanValue:Z
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v19           #value:Ljava/lang/String;
    .restart local v4       #dmLocked:Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_21

    if-eqz v6, :cond_21

    if-nez v7, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v20

    if-nez v20, :cond_21

    .line 1380
    const-string v20, "KeyguardViewMediator"

    const-string v21, "doKeyguard: not showing because lockscreen is off"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1384
    :cond_21
    const-string v20, "KeyguardViewMediator"

    const-string v21, "doKeyguard: showing the lock screen"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private handleAlarmBoot()V
    .locals 1

    .prologue
    .line 2147
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    .line 2148
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleHide()V

    .line 2150
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsIPOBoot:Z

    if-eqz v0, :cond_1

    .line 2151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsIPOBoot:Z

    .line 2153
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 2154
    return-void
.end method

.method private handleDMKeyguardUpdate(Z)V
    .locals 4
    .parameter "lock"

    .prologue
    .line 2279
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDMKeyguardUpdate lock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2281
    const-string v1, "KeyguardViewMediator"

    const-string v2, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing; need to show keyguard so user can enter sim pin"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    .line 2290
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleDisableSystemUIForDM(Z)V

    .line 2291
    return-void

    .line 2286
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2287
    .local v0, option:Landroid/os/Bundle;
    const-string v1, "dmlock_reset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2288
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private handleDisableSystemUIForDM(Z)V
    .locals 3
    .parameter "lock"

    .prologue
    .line 2295
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2296
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2297
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2298
    return-void

    .line 2296
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleHide()V
    .locals 2

    .prologue
    .line 1939
    monitor-enter p0

    .line 1940
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleHide"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1942
    const-string v0, "KeyguardViewMediator"

    const-string v1, "attempt to hide the keyguard while waking, ignored"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    monitor-exit p0

    .line 1960
    :goto_0
    return-void

    .line 1945
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_1

    monitor-exit p0

    goto :goto_0

    .line 1959
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1949
    :cond_1
    :try_start_1
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_2

    .line 1951
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1954
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->hide()V

    .line 1955
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1956
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1957
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1958
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1959
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private handleKeyguardDone(Z)V
    .locals 3
    .parameter "wakeup"

    .prologue
    .line 1805
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleKeyguardDone, wakeup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleHide()V

    .line 1807
    if-eqz p1, :cond_0

    .line 1808
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUp()V

    .line 1811
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1812
    return-void
.end method

.method private handleKeyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 1828
    monitor-enter p0

    .line 1829
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_0

    .line 1831
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1833
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1838
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1840
    :cond_0
    monitor-exit p0

    .line 1841
    return-void

    .line 1840
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleKeyguardReLayout(Z)V
    .locals 3
    .parameter "dmLock"

    .prologue
    .line 2194
    monitor-enter p0

    .line 2196
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleKeyguardReLayout dmLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->reLayoutScreen(Z)V

    .line 2199
    monitor-exit p0

    .line 2200
    return-void

    .line 2199
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOff()V
    .locals 2

    .prologue
    .line 2093
    monitor-enter p0

    .line 2094
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOff"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->onScreenTurnedOff()V

    .line 2096
    monitor-exit p0

    .line 2097
    return-void

    .line 2096
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 2
    .parameter "showListener"

    .prologue
    .line 2104
    monitor-enter p0

    .line 2105
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOn"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    .line 2126
    monitor-exit p0

    .line 2127
    return-void

    .line 2126
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleReset(Landroid/os/Bundle;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 2067
    monitor-enter p0

    .line 2068
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleReset"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->reset(Landroid/os/Bundle;)V

    .line 2071
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2072
    monitor-exit p0

    .line 2073
    return-void

    .line 2072
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSetHidden(Z)V
    .locals 3
    .parameter "isHidden"

    .prologue
    .line 1210
    monitor-enter p0

    .line 1211
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-eq v0, p1, :cond_0

    .line 1212
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetHidden, mHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    sput-boolean p1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    .line 1214
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1215
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1217
    :cond_0
    monitor-exit p0

    .line 1218
    return-void

    .line 1217
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleShow(Landroid/os/Bundle;)V
    .locals 8
    .parameter "options"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1884
    monitor-enter p0

    .line 1885
    :try_start_0
    const-string v4, "KeyguardViewMediator"

    const-string v5, "handleShow enter"

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-nez v4, :cond_0

    monitor-exit p0

    .line 1932
    :goto_0
    return-void

    .line 1888
    :cond_0
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v4, :cond_1

    monitor-exit p0

    goto :goto_0

    .line 1931
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1890
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v4, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 1892
    const-string v4, "KeyguardViewMediator"

    const-string v5, "handleShow mKeyguardViewManager Show exit"

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1895
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1896
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1897
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1898
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1900
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const-string v5, "lock"

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1904
    :goto_1
    :try_start_3
    const-string v4, "KeyguardViewMediatorzxz"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleShow query AlarmBoot before value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1907
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1916
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1918
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v1

    .line 1919
    .local v1, keyguardDisable:Z
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handle show: keyguardDisable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenWaterWave()Z

    move-result v0

    .line 1923
    .local v0, isWaterWaveEnable:Z
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handle show: isWaterWaveEnable before = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    :goto_3
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->booleanWaterWave:Z

    .line 1930
    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleShow exit"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    monitor-exit p0

    goto/16 :goto_0

    .line 1909
    .end local v0           #isWaterWaveEnable:Z
    .end local v1           #keyguardDisable:Z
    :cond_2
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$6;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .restart local v0       #isWaterWaveEnable:Z
    .restart local v1       #keyguardDisable:Z
    :cond_3
    move v2, v3

    .line 1924
    goto :goto_3

    .line 1901
    .end local v0           #isWaterWaveEnable:Z
    .end local v1           #keyguardDisable:Z
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method

.method private handleVerifyUnlock()V
    .locals 2

    .prologue
    .line 2080
    monitor-enter p0

    .line 2081
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleVerifyUnlock"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->verifyUnlock()V

    .line 2083
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2084
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 2085
    monitor-exit p0

    .line 2086
    return-void

    .line 2085
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleWakeWhenReady(II)V
    .locals 3
    .parameter "keyCode"
    .parameter "wakeMSGId"

    .prologue
    .line 2037
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>handleWakeWhenReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Before--synchronized (KeyguardViewMediator.this) wakeMSGId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    monitor-enter p0

    .line 2043
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWakeWhenReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") wakeMSGId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->wakeWhenReadyTq(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2049
    const-string v0, "KeyguardViewMediator"

    const-string v1, "mKeyguardViewManager.wakeWhenReadyTq did not poke wake lock, so poke it ourselves"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity()V

    .line 2057
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2058
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<handleWakeWhenReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") wakeMSGId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    monitor-exit p0

    .line 2060
    return-void

    .line 2059
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hideLocked()V
    .locals 3

    .prologue
    .line 1505
    const-string v1, "KeyguardViewMediator"

    const-string v2, "hideLocked"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1507
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1508
    return-void
.end method

.method public static isKeyguardEnabled()Z
    .locals 1

    .prologue
    .line 2221
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method public static isKeyguardNotShowing()Z
    .locals 3

    .prologue
    .line 2215
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mExternallyEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKeyguardShowingAndNotHidden()Z
    .locals 1

    .prologue
    .line 2226
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeSendUserPresentBroadcast()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1066
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1071
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1073
    :cond_0
    return-void
.end method

.method private notifyAppSimCardName()V
    .locals 7

    .prologue
    .line 874
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    .line 875
    .local v2, isReady:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cooee_current_lock"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, currentLock:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 878
    const-string v4, "coco"

    const-string v5, "currentLock is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    const-string v4, "coco"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentLock:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, fields:[Ljava/lang/String;
    array-length v3, v1

    .line 886
    .local v3, length:I
    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 889
    const/4 v4, 0x1

    aget-object v4, v1, v4

    sput-object v4, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->LOCK_PACKAGE_NAME:Ljava/lang/String;

    .line 890
    const/4 v4, 0x2

    aget-object v4, v1, v4

    sput-object v4, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->LOCK_WRAP_CLASS_NAME:Ljava/lang/String;

    .line 893
    if-eqz v2, :cond_0

    .line 901
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->getSimCardName(Landroid/content/Context;)V

    .line 902
    const-string v4, "coco"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimCardName cooeeSim1 cooeeSim2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->cooeeSim1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->cooeeSim2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->LOCK_PACKAGE_NAME:Ljava/lang/String;

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->LOCK_WRAP_CLASS_NAME:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    goto :goto_0
.end method

.method private notifyScreenOffLocked()V
    .locals 2

    .prologue
    .line 1451
    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenOffLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1453
    return-void
.end method

.method private notifyScreenOnLocked(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 3
    .parameter "showListener"

    .prologue
    .line 1461
    const-string v1, "KeyguardViewMediator"

    const-string v2, "notifyScreenOnLocked"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1463
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1464
    return-void
.end method

.method private playSounds(Z)V
    .locals 8
    .parameter "locked"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1846
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_1

    .line 1847
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1869
    :cond_0
    :goto_0
    return-void

    .line 1851
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1852
    .local v7, cr:Landroid/content/ContentResolver;
    const-string v0, "lockscreen_sounds_enabled"

    invoke-static {v7, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1853
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 1856
    .local v1, whichSound:I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 1858
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 1859
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 1860
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1861
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    .line 1864
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1866
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    goto :goto_0

    .line 1853
    .end local v1           #whichSound:I
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    goto :goto_1
.end method

.method private resetStateLocked(Landroid/os/Bundle;)V
    .locals 3
    .parameter "options"

    .prologue
    .line 1430
    const-string v1, "KeyguardViewMediator"

    const-string v2, "resetStateLocked"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1432
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1433
    return-void
.end method

.method private sendRemoveIPOWinBroadcast()V
    .locals 3

    .prologue
    .line 2137
    const-string v1, "KeyguardViewMediator"

    const-string v2, "sendRemoveIPOWinBroadcast ... "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "alarm.boot.remove.ipowin"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2139
    .local v0, in:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2140
    return-void
.end method

.method private sendUserPresentBroadcast()V
    .locals 3

    .prologue
    .line 1817
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1818
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1819
    .local v0, currentUser:Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1821
    .end local v0           #currentUser:Landroid/os/UserHandle;
    :cond_0
    return-void
.end method

.method private showLocked(Landroid/os/Bundle;)V
    .locals 3
    .parameter "options"

    .prologue
    .line 1493
    const-string v1, "KeyguardViewMediator"

    const-string v2, "showLocked"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1496
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1497
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1498
    return-void
.end method

.method private showWaterWaveLock()V
    .locals 7

    .prologue
    .line 1390
    const/4 v0, 0x0

    .line 1391
    .local v0, bindToServiceSucess:Z
    const-string v4, "android.renderScript.demo"

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->getRunningProcessPid(Ljava/lang/String;)I

    move-result v2

    .line 1392
    .local v2, pid:I
    if-gez v2, :cond_0

    .line 1393
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.myservice"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1394
    .local v3, serviceIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1396
    .end local v3           #serviceIntent:Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->osc:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1397
    const/4 v0, 0x1

    .line 1398
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->showWindow(I)V

    .line 1399
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1400
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSimCardLocked:Z

    if-nez v4, :cond_1

    .line 1401
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleHide()V

    .line 1408
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1409
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1411
    :cond_2
    return-void

    .line 1404
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1405
    .local v1, msg_water_wave:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1406
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private startAlarm()V
    .locals 3

    .prologue
    .line 2157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2158
    .local v0, in:Landroid/content/Intent;
    const-string v1, "isAlarmBoot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2159
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2160
    return-void
.end method

.method private updateActivityLockScreenState()V
    .locals 2

    .prologue
    .line 1873
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1877
    :goto_1
    return-void

    .line 1873
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1875
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private verifyUnlockLocked()V
    .locals 2

    .prologue
    .line 1440
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlockLocked"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1442
    return-void
.end method

.method private wakeWhenReady(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    .line 1474
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wakeWhenReady("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1482
    sget v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sWakeMSGId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sWakeMSGId:I

    .line 1483
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<<wakeWhenReadyLocked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Before--Send Message WAKE_WHEN_READY sWakeMSGId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sWakeMSGId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    sget v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sWakeMSGId:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1485
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1486
    return-void
.end method


# virtual methods
.method public bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 4
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 834
    const-string v1, "KeyguardViewMediator"

    const-string v2, "bindtoService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.myservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 836
    .local v0, serviceIntent:Landroid/content/Intent;
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ServiceBinder;

    invoke-direct {v1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSb:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ServiceBinder;

    .line 837
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSb:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ServiceBinder;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1419
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->dismiss()V

    .line 1422
    :cond_0
    return-void
.end method

.method public dmCheckLocked()Z
    .locals 1

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v0

    return v0
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 3
    .parameter "options"

    .prologue
    const/16 v2, 0xd

    .line 1225
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1226
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1227
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1228
    return-void
.end method

.method public forceKillProcess(Ljava/lang/String;)Z
    .locals 10
    .parameter "packageName"

    .prologue
    .line 324
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 325
    .local v0, am:Landroid/app/ActivityManager;
    const-string v7, "KeyguardViewMediator"

    const-string v8, "forceKillWaterWaveLock"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->getRunningProcessPid(Ljava/lang/String;)I

    move-result v5

    .line 327
    .local v5, pid:I
    if-lez v5, :cond_3

    .line 328
    const/4 v6, 0x0

    .line 329
    .local v6, process:Ljava/lang/Process;
    const/4 v3, 0x0

    .line 330
    .local v3, os:Ljava/io/DataOutputStream;
    new-instance v1, Ljava/lang/String;

    const-string v7, "/system/bin/kill "

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 331
    .local v1, cmd:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "/system/xbin/aa"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 334
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 335
    .end local v3           #os:Ljava/io/DataOutputStream;
    .local v4, os:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 336
    const-string v7, "exit\n"

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 338
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 343
    if-eqz v4, :cond_0

    .line 344
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 346
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 351
    .end local v4           #os:Ljava/io/DataOutputStream;
    .restart local v3       #os:Ljava/io/DataOutputStream;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->getRunningProcessPid(Ljava/lang/String;)I

    move-result v5

    .line 352
    const-string v7, "KeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "aa kill pid before = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v7, 0x1

    .line 399
    .end local v1           #cmd:Ljava/lang/String;
    .end local v3           #os:Ljava/io/DataOutputStream;
    .end local v6           #process:Ljava/lang/Process;
    :goto_1
    return v7

    .line 347
    .restart local v1       #cmd:Ljava/lang/String;
    .restart local v4       #os:Ljava/io/DataOutputStream;
    .restart local v6       #process:Ljava/lang/Process;
    :catch_0
    move-exception v2

    .line 348
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .line 350
    .end local v4           #os:Ljava/io/DataOutputStream;
    .restart local v3       #os:Ljava/io/DataOutputStream;
    goto :goto_0

    .line 339
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 340
    .restart local v2       #e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 343
    if-eqz v3, :cond_1

    .line 344
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 346
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 347
    :catch_2
    move-exception v2

    .line 348
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 342
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 343
    :goto_3
    if-eqz v3, :cond_2

    .line 344
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 346
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 349
    :goto_4
    throw v7

    .line 347
    :catch_3
    move-exception v2

    .line 348
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 399
    .end local v1           #cmd:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #os:Ljava/io/DataOutputStream;
    .end local v6           #process:Ljava/lang/Process;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 342
    .restart local v1       #cmd:Ljava/lang/String;
    .restart local v4       #os:Ljava/io/DataOutputStream;
    .restart local v6       #process:Ljava/lang/Process;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #os:Ljava/io/DataOutputStream;
    .restart local v3       #os:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 339
    .end local v3           #os:Ljava/io/DataOutputStream;
    .restart local v4       #os:Ljava/io/DataOutputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #os:Ljava/io/DataOutputStream;
    .restart local v3       #os:Ljava/io/DataOutputStream;
    goto :goto_2
.end method

.method public getRunningProcessPid(Ljava/lang/String;)I
    .locals 9
    .parameter "apiInfoProcessName"

    .prologue
    .line 306
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 307
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 308
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v3, :cond_1

    .line 309
    const/4 v5, -0x1

    .line 320
    :cond_0
    return v5

    .line 310
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 311
    .local v4, listnum:I
    const/4 v5, -0x1

    .line 312
    .local v5, pid:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 313
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 314
    .local v1, apinfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v6, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "process name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " apinfo.importance = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " apinfo.pid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v7, "android.renderScript.demo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 317
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 312
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public handleShowAssistant()V
    .locals 1

    .prologue
    .line 2168
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->showAssistant()V

    .line 2169
    return-void
.end method

.method public hideWindow(I)V
    .locals 4
    .parameter "whichwindow"

    .prologue
    .line 812
    const-string v1, "KeyguardViewMediator"

    const-string v2, "hide window"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mService:Lcom/android/internal/policy/impl/ILockWindowService;

    if-eqz v1, :cond_0

    .line 815
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mService:Lcom/android/internal/policy/impl/ILockWindowService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/ILockWindowService;->hideWindow(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide widnow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAlarmUnlockScreen()Z
    .locals 1

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->isAlarmUnlockScreen()Z

    move-result v0

    return v0
.end method

.method public isDismissable()Z
    .locals 1

    .prologue
    .line 2130
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 1236
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1185
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .locals 1

    .prologue
    .line 1192
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyguardDone(ZZ)V
    .locals 6
    .parameter "authenticated"
    .parameter "wakeup"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1633
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1634
    monitor-enter p0

    .line 1635
    const v3, 0x11170

    const/4 v4, 0x2

    :try_start_0
    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1636
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyguardDone("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1638
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1639
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1641
    if-eqz p1, :cond_0

    .line 1642
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 1645
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_1

    .line 1646
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-interface {v1, p1}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 1647
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 1649
    if-eqz p1, :cond_1

    .line 1652
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1653
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1656
    :cond_1
    monitor-exit p0

    .line 1657
    return-void

    :cond_2
    move v1, v2

    .line 1638
    goto :goto_0

    .line 1656
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDreamingStarted()V
    .locals 1

    .prologue
    .line 1080
    monitor-enter p0

    .line 1081
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    .line 1084
    :cond_0
    monitor-exit p0

    .line 1085
    return-void

    .line 1084
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 1091
    monitor-enter p0

    .line 1092
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 1093
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1095
    :cond_0
    monitor-exit p0

    .line 1096
    return-void

    .line 1095
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onScreenTurnedOff(I)V
    .locals 4
    .parameter "why"

    .prologue
    const/4 v0, 0x0

    .line 954
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>onScreenTurnedOff("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ---ScreenOff Before--synchronized (this)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    monitor-enter p0

    .line 956
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 957
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenTurnedOff("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ---ScreenOff mScreenOn = false; Before--boolean lockImmediately"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 964
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 967
    .local v0, lockImmediately:Z
    :cond_1
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenTurnedOff("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ---ScreenOff mScreenOn = false; After--boolean lockImmediately="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mExitSecureCallback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mShowing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_3

    .line 972
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenTurnedOff("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ---ScreenOff pending exit secure callback cancelled ---ScreenOff"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 974
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 975
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v1, :cond_2

    .line 976
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 989
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<<onScreenTurnedOff("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ---ScreenOff After--synchronized (this)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    return-void

    .line 978
    :cond_3
    :try_start_1
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_4

    .line 979
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 980
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_0

    .line 989
    .end local v0           #lockImmediately:Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 981
    .restart local v0       #lockImmediately:Z
    :cond_4
    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    if-nez v0, :cond_6

    .line 983
    :cond_5
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    goto :goto_0

    .line 984
    :cond_6
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    .line 987
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 3
    .parameter "showListener"

    .prologue
    .line 1051
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>onScreenTurnedOn, ---ScreenOn seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "seq will be change in synchronized Before--synchronized (this)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    monitor-enter p0

    .line 1054
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 1055
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1056
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    if-eqz p1, :cond_0

    .line 1058
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->notifyScreenOnLocked(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    .line 1060
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 1062
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<onScreenTurnedOn, ---ScreenOn seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    return-void

    .line 1060
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 913
    monitor-enter p0

    .line 914
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 916
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 927
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingVoiceWeak()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 931
    :cond_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "suppressing biometric unlock during boot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 937
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v0

    if-nez v0, :cond_2

    .line 938
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    .line 941
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 945
    return-void

    .line 934
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    goto :goto_0

    .line 941
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onWakeKeyWhenKeyguardShowingTq(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 1605
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakeKeyWhenKeyguardShowing("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeWhenReady(I)V

    .line 1611
    return-void
.end method

.method public onWakeMotionWhenKeyguardShowingTq()V
    .locals 2

    .prologue
    .line 1624
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onWakeMotionWhenKeyguardShowing()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeWhenReady(I)V

    .line 1630
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1
    .parameter "newUserId"

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 1523
    return-void
.end method

.method public setDebugFilterStatus(Z)V
    .locals 0
    .parameter "debugflag"

    .prologue
    .line 2206
    return-void
.end method

.method public setHidden(Z)V
    .locals 6
    .parameter "isHidden"

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1200
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sendKeyguardVisibilityChanged(Z)V

    .line 1201
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1202
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1203
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1204
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v1, v3

    .line 1200
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1202
    goto :goto_1
.end method

.method public setKeyguardEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 1104
    monitor-enter p0

    .line 1105
    :try_start_0
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyguardEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    sput-boolean p1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1109
    if-nez p1, :cond_2

    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_2

    .line 1110
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_0

    .line 1111
    const-string v1, "KeyguardViewMediator"

    const-string v2, "in process of verifyUnlock request, ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    monitor-exit p0

    .line 1153
    :goto_0
    return-void

    .line 1118
    :cond_0
    const-string v1, "KeyguardViewMediator"

    const-string v2, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1121
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 1152
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1122
    :cond_2
    if-eqz p1, :cond_1

    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v1, :cond_1

    .line 1124
    const-string v1, "KeyguardViewMediator"

    const-string v2, "previously hidden, reshowing, reenabling status bar expansion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1128
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_3

    .line 1129
    const-string v1, "KeyguardViewMediator"

    const-string v2, "onKeyguardExitResult(false), resetting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 1131
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 1132
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_1

    .line 1134
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1140
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1141
    const-string v1, "KeyguardViewMediator"

    const-string v2, "waiting until mWaitingUntilKeyguardVisible is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 1144
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 1149
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    const-string v1, "KeyguardViewMediator"

    const-string v2, "done waiting for mWaitingUntilKeyguardVisible"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public showAssistant()V
    .locals 3

    .prologue
    .line 2163
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2164
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2165
    return-void
.end method

.method public showWindow(I)V
    .locals 4
    .parameter "whichwindow"

    .prologue
    .line 800
    const-string v1, "KeyguardViewMediator"

    const-string v2, "show window"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mService:Lcom/android/internal/policy/impl/ILockWindowService;

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mService:Lcom/android/internal/policy/impl/ILockWindowService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/ILockWindowService;->showWindow(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unbindFromService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSb:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ServiceBinder;

    if-nez v0, :cond_0

    .line 842
    const-string v0, "KeyguardViewMediator"

    const-string v1, "unbindFromService, Trying to unbind for unknown Context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :goto_0
    return-void

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSb:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ServiceBinder;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 846
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSb:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ServiceBinder;

    goto :goto_0
.end method

.method public userActivity()V
    .locals 2

    .prologue
    .line 709
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity(J)V

    .line 710
    return-void
.end method

.method public userActivity(J)V
    .locals 4
    .parameter "holdMs"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 716
    return-void
.end method

.method public verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1159
    monitor-enter p0

    .line 1160
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1163
    const-string v0, "KeyguardViewMediator"

    const-string v1, "ignoring because device isn\'t provisioned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 1178
    :goto_0
    monitor-exit p0

    .line 1179
    return-void

    .line 1165
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_1

    .line 1169
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock called when not externally disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_0

    .line 1178
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1171
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v0, :cond_2

    .line 1173
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_0

    .line 1175
    :cond_2
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 1176
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public wakeUp()V
    .locals 3

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 706
    return-void
.end method

.method static synthetic getUpdateMonitor(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method callDoKeyguardLocked()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    return-void
.end method

.method callResetStateLocked()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    return-void
.end method