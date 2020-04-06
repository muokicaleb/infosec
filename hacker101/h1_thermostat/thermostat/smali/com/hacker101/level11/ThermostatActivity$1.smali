.class Lcom/hacker101/level11/ThermostatActivity$1;
.super Ljava/lang/Object;
.source "ThermostatActivity.java"

# interfaces
.implements Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hacker101/level11/ThermostatActivity;->configureListeners(Lcom/hacker101/level11/Model/ThermostatModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hacker101/level11/ThermostatActivity;

.field final synthetic val$model:Lcom/hacker101/level11/Model/ThermostatModel;


# direct methods
.method constructor <init>(Lcom/hacker101/level11/ThermostatActivity;Lcom/hacker101/level11/Model/ThermostatModel;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/hacker101/level11/ThermostatActivity$1;->this$0:Lcom/hacker101/level11/ThermostatActivity;

    iput-object p2, p0, Lcom/hacker101/level11/ThermostatActivity$1;->val$model:Lcom/hacker101/level11/Model/ThermostatModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;IZ)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/hacker101/level11/ThermostatActivity$1;->val$model:Lcom/hacker101/level11/Model/ThermostatModel;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hacker101/level11/Model/ThermostatModel;->setTargetTemperature(Ljava/lang/Integer;)V

    return-void
.end method

.method public onStartTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 0

    return-void
.end method
