.class interface abstract Lcom/android/internal/policy/impl/keyguard/IWrap;
.super Ljava/lang/Object;
.source "ViewAgent.java"


# static fields
.field public static final NOTIFY_APP_LOGINFO:I = 0x4e20

.field public static final NOTIFY_APP_SIMCARD_NAME:I = 0x4e22

.field public static final NOTITY_APP_REMOTE_CONTEXT:I = 0x4e21

.field public static final REQUEST_KERNEL_EXIT:I = 0x2710

.field public static final REQUEST_KERNEL_RESET_LIGHT:I = 0x2711

.field public static final REQUEST_KERNEL_SEND_SIMCARD_NAME:I = 0x2712


# virtual methods
.method public abstract getAppService()Landroid/os/Handler$Callback;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract onCreate()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract setKernelCallback(Landroid/os/Handler$Callback;)V
.end method
