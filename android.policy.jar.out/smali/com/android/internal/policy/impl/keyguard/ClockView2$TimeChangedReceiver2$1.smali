.class Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2$1;
.super Ljava/lang/Object;
.source "ClockView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2;

.field final synthetic val$clock:Lcom/android/internal/policy/impl/keyguard/ClockView2;

.field final synthetic val$localeChanged:Z

.field final synthetic val$timezoneChanged:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2;ZLcom/android/internal/policy/impl/keyguard/ClockView2;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2$1;->val$timezoneChanged:Z

    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2$1;->val$clock:Lcom/android/internal/policy/impl/keyguard/ClockView2;

    iput-boolean p4, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2$1;->val$localeChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2$1;->val$timezoneChanged:Z

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2$1;->val$clock:Lcom/android/internal/policy/impl/keyguard/ClockView2;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/ClockView2;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/ClockView2;->access$002(Lcom/android/internal/policy/impl/keyguard/ClockView2;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 116
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2$1;->val$localeChanged:Z

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2$1;->val$clock:Lcom/android/internal/policy/impl/keyguard/ClockView2;

    #calls: Lcom/android/internal/policy/impl/keyguard/ClockView2;->getAmPm()Lcom/android/internal/policy/impl/keyguard/ClockView2$AmPm;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/ClockView2;->access$100(Lcom/android/internal/policy/impl/keyguard/ClockView2;)Lcom/android/internal/policy/impl/keyguard/ClockView2$AmPm;

    move-result-object v0

    .line 118
    .local v0, ampm:Lcom/android/internal/policy/impl/keyguard/ClockView2$AmPm;
    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ClockView2$AmPm;->reloadStringResource()V

    .line 122
    .end local v0           #ampm:Lcom/android/internal/policy/impl/keyguard/ClockView2$AmPm;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView2$TimeChangedReceiver2$1;->val$clock:Lcom/android/internal/policy/impl/keyguard/ClockView2;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ClockView2;->updateTime()V

    .line 123
    return-void
.end method
