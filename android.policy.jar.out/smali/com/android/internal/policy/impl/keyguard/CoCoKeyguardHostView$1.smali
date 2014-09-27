.class Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$1;
.super Ljava/lang/Object;
.source "CoCoKeyguardHostView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, ret:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 136
    :goto_0
    return v0

    .line 118
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    .line 120
    :cond_0
    const/4 v0, 0x1

    .line 121
    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity(J)V

    .line 125
    :cond_1
    const/4 v0, 0x1

    .line 126
    goto :goto_0

    .line 129
    :pswitch_2
    const/4 v0, 0x0

    .line 130
    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
