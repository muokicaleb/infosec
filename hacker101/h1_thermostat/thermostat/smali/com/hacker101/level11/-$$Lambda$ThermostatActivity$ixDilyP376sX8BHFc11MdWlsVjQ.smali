.class public final synthetic Lcom/hacker101/level11/-$$Lambda$ThermostatActivity$ixDilyP376sX8BHFc11MdWlsVjQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lcom/hacker101/level11/ThermostatActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/hacker101/level11/ThermostatActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hacker101/level11/-$$Lambda$ThermostatActivity$ixDilyP376sX8BHFc11MdWlsVjQ;->f$0:Lcom/hacker101/level11/ThermostatActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/hacker101/level11/-$$Lambda$ThermostatActivity$ixDilyP376sX8BHFc11MdWlsVjQ;->f$0:Lcom/hacker101/level11/ThermostatActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/hacker101/level11/ThermostatActivity;->lambda$observeModel$3(Lcom/hacker101/level11/ThermostatActivity;Ljava/lang/Boolean;)V

    return-void
.end method
