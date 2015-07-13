Telomni$alcdepedit <- Telomni$alcdep
table(Telomni$alcdepedit)
Telomni$alcdepedit[Telomni$alcdepedit == 1] <- 0
Telomni$alcdepedit[Telomni$alcdepedit == 2] <- 1
table(Telomni$alcdepedit)

Telomni$cocdepedit <- Telomni$cocdep
table(Telomni$cocdepedit)
Telomni$cocdepedit[Telomni$cocdepedit == 1] <- 0
Telomni$cocdepedit[Telomni$cocdepedit == 2] <- 1
table(Telomni$cocdepedit)

Telomni$opidepedit <- Telomni$opidep
table(Telomni$opidepedit)
Telomni$opidepedit[Telomni$opidepedit == 1] <- 0
Telomni$opidepedit[Telomni$opidepedit == 2] <- 1
table(Telomni$opidepedit)

Telomni$tobdepedit <- Telomni$tobdep
table(Telomni$tobdepedit)
Telomni$tobdepedit[Telomni$tobdepedit == 1] <- 0
Telomni$tobdepedit[Telomni$tobdepedit == 2] <- 1
table(Telomni$tobdepedit)

Telomni$ptsdedit <- Telomni$ptsd
table(Telomni$ptsdedit)
Telomni$ptsdedit[Telomni$ptsdedit == 1] <- 0
Telomni$ptsdedit[Telomni$ptsdedit == 2] <- 1
table(Telomni$ptsdedit)

Telomni$ptsdedit <- Telomni$ptsd
table(Telomni$ptsdedit)
Telomni$ptsdedit[Telomni$ptsdedit == 1] <- 0
Telomni$ptsdedit[Telomni$ptsdedit == 2] <- 1
table(Telomni$ptsdedit)

table(Telomni$AGE)
Telomni$AGEsquared <- Telomni$AGE * Telomni$AGE
table(Telomni$AGEsquared)

> PersonsTLength <- Telomni[1:2]
> Telomni <- merge(PersonsTLength, omni, by.x = "IID", by.y = "IID")
> View(Telomni)
> View(Telomni)