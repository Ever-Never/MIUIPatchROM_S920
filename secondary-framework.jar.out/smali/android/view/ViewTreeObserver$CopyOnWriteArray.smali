.class Landroid/view/ViewTreeObserver$CopyOnWriteArray;
.super Ljava/lang/Object;
.source "ViewTreeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewTreeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CopyOnWriteArray"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mDataCopy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mStart:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 820
    .local p0, this:Landroid/view/ViewTreeObserver$CopyOnWriteArray;,"Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    .line 803
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    .line 821
    return-void
.end method

.method private getArray()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 824
    .local p0, this:Landroid/view/ViewTreeObserver$CopyOnWriteArray;,"Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mStart:Z

    if-eqz v0, :cond_1

    .line 825
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    .line 826
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    .line 828
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    goto :goto_0
.end method


# virtual methods
.method add(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 854
    .local p0, this:Landroid/view/ViewTreeObserver$CopyOnWriteArray;,"Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    return-void
.end method

.method addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 858
    .local p0, this:Landroid/view/ViewTreeObserver$CopyOnWriteArray;,"Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    .local p1, array:Landroid/view/ViewTreeObserver$CopyOnWriteArray;,"Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    invoke-direct {p0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 859
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 866
    .local p0, this:Landroid/view/ViewTreeObserver$CopyOnWriteArray;,"Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    invoke-direct {p0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 867
    return-void
.end method

.method end()V
    .locals 2

    .prologue
    .line 841
    .local p0, this:Landroid/view/ViewTreeObserver$CopyOnWriteArray;,"Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mStart:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iteration not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mStart:Z

    .line 843
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    .line 846
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    .line 847
    return-void
.end method

.method remove(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 862
    .local p0, this:Landroid/view/ViewTreeObserver$CopyOnWriteArray;,"Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 863
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 850
    .local p0, this:Landroid/view/ViewTreeObserver$CopyOnWriteArray;,"Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    invoke-direct {p0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 832
    .local p0, this:Landroid/view/ViewTreeObserver$CopyOnWriteArray;,"Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mStart:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iteration already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mStart:Z

    .line 834
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    .line 835
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    iget-object v1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    #setter for: Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mData:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->access$002(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 836
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    iget-object v1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    #setter for: Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mSize:I
    invoke-static {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->access$102(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;I)I

    .line 837
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    return-object v0
.end method