.class public Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.source "CoCoKeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$2;,
        Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$OnDismissAction;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x4b455947

.field public static DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "coco"

.field private static final TAG:Ljava/lang/String; = "CoCoKeyguardHostView"

.field public static cooeeSim1:Ljava/lang/String;

.field public static cooeeSim2:Ljava/lang/String;


# instance fields
.field private final MAX_WIDGETS:I

.field private mCameraDisabled:Z

.field private mCoCoLockerCallback:Landroid/os/Handler$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mDisabledFeatures:I

.field protected mDismissAction:Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$OnDismissAction;

.field private mEnableFallback:Z

.field protected mFailedAttempts:I

.field private mIsVerifyUnlockOnly:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockView:Landroid/view/View;

.field private mSafeModeEnabled:Z

.field private mScreenOn:Z

.field private mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

.field protected mShowSecurityWhenReturn:Z

.field private mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

.field private mViewManager:Landroid/view/ViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->DEBUG:Z

    .line 100
    const-string v0, ""

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->cooeeSim1:Ljava/lang/String;

    .line 101
    const-string v0, ""

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->cooeeSim2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->MAX_WIDGETS:I

    .line 82
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 112
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mCoCoLockerCallback:Landroid/os/Handler$Callback;

    .line 196
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mContext:Landroid/content/Context;

    .line 197
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 198
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    .line 199
    return-void
.end method

.method public static getSimCardName(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 143
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 144
    .local v0, Monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    const-string v7, "coco"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isSim1Locked SimState1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLockedGemini(I)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLockedGemini(I)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v7, v8, :cond_2

    .line 146
    invoke-static {p0, v10}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 147
    .local v1, info1:Landroid/provider/Telephony$SIMInfo;
    if-eqz v1, :cond_1

    iget-object v7, v1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 148
    iget-object v3, v1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 149
    .local v3, str:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v12, :cond_0

    .line 150
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, strs:[Ljava/lang/String;
    aget-object v7, v5, v10

    sput-object v7, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->cooeeSim1:Ljava/lang/String;

    .line 164
    .end local v1           #info1:Landroid/provider/Telephony$SIMInfo;
    .end local v3           #str:Ljava/lang/String;
    .end local v5           #strs:[Ljava/lang/String;
    :goto_0
    const-string v7, "coco"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isSim2Locked SimState2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLockedGemini(I)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLockedGemini(I)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v7, v8, :cond_5

    .line 166
    invoke-static {p0, v11}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 167
    .local v2, info2:Landroid/provider/Telephony$SIMInfo;
    if-eqz v2, :cond_4

    iget-object v7, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 168
    iget-object v4, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 169
    .local v4, str2:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v12, :cond_3

    .line 170
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, strs2:[Ljava/lang/String;
    aget-object v7, v6, v10

    sput-object v7, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->cooeeSim2:Ljava/lang/String;

    .line 182
    .end local v2           #info2:Landroid/provider/Telephony$SIMInfo;
    .end local v4           #str2:Ljava/lang/String;
    .end local v6           #strs2:[Ljava/lang/String;
    :goto_1
    return-void

    .line 153
    .restart local v1       #info1:Landroid/provider/Telephony$SIMInfo;
    .restart local v3       #str:Ljava/lang/String;
    :cond_0
    iget-object v7, v1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    sput-object v7, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->cooeeSim1:Ljava/lang/String;

    goto :goto_0

    .line 157
    .end local v3           #str:Ljava/lang/String;
    :cond_1
    const-string v7, "coco"

    const-string v8, "cooeeSim1 = null"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    .end local v1           #info1:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    const-string v7, ""

    sput-object v7, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->cooeeSim1:Ljava/lang/String;

    goto :goto_0

    .line 173
    .restart local v2       #info2:Landroid/provider/Telephony$SIMInfo;
    .restart local v4       #str2:Ljava/lang/String;
    :cond_3
    iget-object v7, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    sput-object v7, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->cooeeSim2:Ljava/lang/String;

    goto :goto_1

    .line 176
    .end local v4           #str2:Ljava/lang/String;
    :cond_4
    const-string v7, "coco"

    const-string v8, "cooeeSim2 = null"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 180
    .end local v2           #info2:Landroid/provider/Telephony$SIMInfo;
    :cond_5
    const-string v7, ""

    sput-object v7, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->cooeeSim2:Ljava/lang/String;

    goto :goto_1
.end method

.method private isSecure()Z
    .locals 4

    .prologue
    .line 369
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 370
    .local v0, mode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 383
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown security mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    .line 381
    :goto_0
    return v1

    .line 375
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    goto :goto_0

    .line 379
    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    .line 381
    :pswitch_3
    const/4 v1, 0x0

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 451
    const-string v0, "coco"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->onPause()V

    .line 454
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->removeView(Landroid/view/View;)V

    .line 456
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockView:Landroid/view/View;

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->onDestroy()V

    .line 460
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    .line 463
    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 281
    const-string v0, "coco"

    const-string v1, "keyguardDoneDrawing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDoneDrawing()V

    .line 284
    :cond_0
    return-void
.end method

.method public getUserActivityTimeout()J
    .locals 2

    .prologue
    .line 470
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public goToUserSwitcher()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public goToWidget(I)V
    .locals 0
    .parameter "appWidgetId"

    .prologue
    .line 233
    return-void
.end method

.method public handleBackKey()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public handleMenuKey()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public initCoCoHostView(Lcom/android/internal/policy/impl/keyguard/ViewAgent;)V
    .locals 3
    .parameter "viewAgent"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mCoCoLockerCallback:Landroid/os/Handler$Callback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->setKernelCallback(Landroid/os/Handler$Callback;)V

    .line 204
    const-string v0, "cocoTest"

    const-string v1, "before onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->onCreate()V

    .line 206
    const-string v0, "cocoTest"

    const-string v1, "after onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    const-string v1, "ViewWrap.onCreate finish"

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->logApp(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->removeView(Landroid/view/View;)V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockView:Landroid/view/View;

    .line 214
    :cond_0
    const-string v0, "cocoTest"

    const-string v1, "before getView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockView:Landroid/view/View;

    .line 216
    const-string v0, "cocoTest"

    const-string v1, "after getView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v0, "coco"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLockView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->addView(Landroid/view/View;)V

    .line 219
    return-void
.end method

.method public isAlarmUnlockScreen()Z
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->AlarmBoot:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_0

    .line 435
    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 299
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->onAttachedToWindow()V

    .line 300
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 304
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->onDetachedFromWindow()V

    .line 306
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mScreenOn:Z

    .line 322
    const-string v0, "coco"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->onPause()V

    .line 326
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .prologue
    .line 330
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CoCoKeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen on, instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mScreenOn:Z

    .line 345
    const-string v0, "coco"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->onResume()V

    .line 349
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 426
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->onWindowFocusChanged(Z)V

    .line 428
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 354
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CoCoKeyguardHostView"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    const-string v0, "coco"

    const-string v1, "CoCoKeyguardHostView show is called!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-void
.end method

.method public showAssistant()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public showNextSecurityScreenIfPresent()Z
    .locals 2

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 238
    .local v0, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 239
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v0, :cond_0

    .line 240
    const/4 v1, 0x0

    .line 243
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public verifyUnlock()V
    .locals 3

    .prologue
    .line 403
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 404
    .local v0, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    .line 405
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_0

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 417
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mIsVerifyUnlockOnly:Z

    goto :goto_0
.end method

.method public wakeWhenReadyTq(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 389
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CoCoKeyguardHostView"

    const-string v1, "onWakeKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CoCoKeyguardHostView"

    const-string v1, "switching screens to unlock screen because wake key was MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->wakeUp()V

    .line 399
    :cond_2
    return-void

    .line 394
    :cond_3
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CoCoKeyguardHostView"

    const-string v1, "poking wake lock immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
