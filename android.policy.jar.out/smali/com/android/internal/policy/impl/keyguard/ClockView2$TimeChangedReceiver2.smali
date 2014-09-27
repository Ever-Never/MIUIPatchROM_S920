.class Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2;
.super Landroid/content/BroadcastReceiver;
.source "ClockView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/ClockView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeChangedReceiver2"
.end annotation


# instance fields
.field private mClock:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/ClockView2;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/ClockView2;)V
    .locals 1
    .parameter "clock"

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2;->mClock:Ljava/lang/ref/WeakReference;

    .line 99
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/ClockView2;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 107
    .local v2, timezoneChanged:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 109
    .local v1, localeChanged:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/ClockView2;

    .line 110
    .local v0, clock:Lcom/android/internal/policy/impl/keyguard/ClockView2;
    if-eqz v0, :cond_0

    .line 111
    #getter for: Lcom/android/internal/policy/impl/keyguard/ClockView2;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/ClockView2;->access$200(Lcom/android/internal/policy/impl/keyguard/ClockView2;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2$1;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2;ZLcom/android/internal/policy/impl/keyguard/ClockView2;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    :goto_0
    return-void

    .line 127
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v3

    goto :goto_0
.end method
