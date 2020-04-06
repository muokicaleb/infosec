.class public final synthetic Lcom/hacker101/level11/-$$Lambda$ThermostatActivity$EzfQHoZlaSFFzTvTiyI-KtNP3F0;
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

    iput-object p1, p0, Lcom/hacker101/level11/-$$Lambda$ThermostatActivity$EzfQHoZlaSFFzTvTiyI-KtNP3F0;->f$0:Lcom/hacker101/level11/ThermostatActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/hacker101/level11/-$$Lambda$ThermostatActivity$EzfQHoZlaSFFzTvTiyI-KtNP3F0;->f$0:Lcom/hacker101/level11/ThermostatActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/hacker101/level11/ThermostatActivity;->lambda$observeModel$2(Lcom/hacker101/level11/ThermostatActivity;Ljava/lang/Integer;)V

    return-void
.end method
