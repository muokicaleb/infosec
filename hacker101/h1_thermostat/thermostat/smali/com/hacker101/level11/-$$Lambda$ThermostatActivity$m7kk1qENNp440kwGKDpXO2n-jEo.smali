.class public final synthetic Lcom/hacker101/level11/-$$Lambda$ThermostatActivity$m7kk1qENNp440kwGKDpXO2n-jEo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/hacker101/level11/Model/ThermostatModel;


# direct methods
.method public synthetic constructor <init>(Lcom/hacker101/level11/Model/ThermostatModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hacker101/level11/-$$Lambda$ThermostatActivity$m7kk1qENNp440kwGKDpXO2n-jEo;->f$0:Lcom/hacker101/level11/Model/ThermostatModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hacker101/level11/-$$Lambda$ThermostatActivity$m7kk1qENNp440kwGKDpXO2n-jEo;->f$0:Lcom/hacker101/level11/Model/ThermostatModel;

    invoke-static {v0, p1}, Lcom/hacker101/level11/ThermostatActivity;->lambda$configureListeners$1(Lcom/hacker101/level11/Model/ThermostatModel;Landroid/view/View;)V

    return-void
.end method
