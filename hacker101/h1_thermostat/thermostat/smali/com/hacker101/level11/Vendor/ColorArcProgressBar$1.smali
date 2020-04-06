.class Lcom/hacker101/level11/Vendor/ColorArcProgressBar$1;
.super Ljava/lang/Object;
.source "ColorArcProgressBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->setAnimation(FFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hacker101/level11/Vendor/ColorArcProgressBar;


# direct methods
.method constructor <init>(Lcom/hacker101/level11/Vendor/ColorArcProgressBar;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar$1;->this$0:Lcom/hacker101/level11/Vendor/ColorArcProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar$1;->this$0:Lcom/hacker101/level11/Vendor/ColorArcProgressBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->access$002(Lcom/hacker101/level11/Vendor/ColorArcProgressBar;F)F

    .line 398
    iget-object p1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar$1;->this$0:Lcom/hacker101/level11/Vendor/ColorArcProgressBar;

    invoke-static {p1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->access$000(Lcom/hacker101/level11/Vendor/ColorArcProgressBar;)F

    move-result v0

    iget-object v1, p0, Lcom/hacker101/level11/Vendor/ColorArcProgressBar$1;->this$0:Lcom/hacker101/level11/Vendor/ColorArcProgressBar;

    invoke-static {v1}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->access$200(Lcom/hacker101/level11/Vendor/ColorArcProgressBar;)F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/hacker101/level11/Vendor/ColorArcProgressBar;->access$102(Lcom/hacker101/level11/Vendor/ColorArcProgressBar;F)F

    return-void
.end method
