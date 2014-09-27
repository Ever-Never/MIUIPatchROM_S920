.class public interface abstract Lcom/android/internal/policy/impl/ILockWindowService;
.super Ljava/lang/Object;
.source "ILockWindowService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/ILockWindowService$Stub;
    }
.end annotation


# virtual methods
.method public abstract hideWindow(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showWindow(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
