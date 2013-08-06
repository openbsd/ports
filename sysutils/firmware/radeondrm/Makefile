# $OpenBSD: Makefile,v 1.1.1.1 2013/08/06 23:42:16 jsg Exp $

FW_DRIVER=	radeondrm
FW_VER=		20130730
DISTNAME=	radeon-firmware-${FW_VER}

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

HOMEPAGE=	https://git.kernel.org/cgit/linux/kernel/git/firmware/linux-firmware.git/tree/radeon

FIRMWARE= \
ARUBA_me.bin ARUBA_pfp.bin ARUBA_rlc.bin BARTS_mc.bin BARTS_me.bin \
BARTS_pfp.bin BARTS_smc.bin BONAIRE_ce.bin BONAIRE_mc.bin BONAIRE_me.bin \
BONAIRE_mec.bin BONAIRE_pfp.bin BONAIRE_rlc.bin BONAIRE_sdma.bin \
BONAIRE_uvd.bin BTC_rlc.bin CAICOS_mc.bin CAICOS_me.bin CAICOS_pfp.bin \
CAICOS_smc.bin CAYMAN_mc.bin CAYMAN_me.bin CAYMAN_pfp.bin CAYMAN_rlc.bin \
CAYMAN_smc.bin CEDAR_me.bin CEDAR_pfp.bin CEDAR_rlc.bin CEDAR_smc.bin \
CYPRESS_me.bin CYPRESS_pfp.bin CYPRESS_rlc.bin CYPRESS_smc.bin \
CYPRESS_uvd.bin HAINAN_ce.bin HAINAN_mc.bin HAINAN_me.bin HAINAN_pfp.bin \
HAINAN_rlc.bin HAINAN_smc.bin JUNIPER_me.bin JUNIPER_pfp.bin \
JUNIPER_rlc.bin JUNIPER_smc.bin KABINI_ce.bin KABINI_me.bin \
KABINI_mec.bin KABINI_pfp.bin KABINI_rlc.bin KABINI_sdma.bin \
OLAND_ce.bin OLAND_mc.bin OLAND_me.bin OLAND_pfp.bin OLAND_rlc.bin \
OLAND_smc.bin PALM_me.bin PALM_pfp.bin PITCAIRN_ce.bin PITCAIRN_mc.bin \
PITCAIRN_me.bin PITCAIRN_pfp.bin PITCAIRN_rlc.bin PITCAIRN_smc.bin \
R100_cp.bin R200_cp.bin R300_cp.bin R420_cp.bin R520_cp.bin R600_me.bin \
R600_pfp.bin R600_rlc.bin R700_rlc.bin REDWOOD_me.bin REDWOOD_pfp.bin \
REDWOOD_rlc.bin REDWOOD_smc.bin RS600_cp.bin RS690_cp.bin RS780_me.bin \
RS780_pfp.bin RV610_me.bin RV610_pfp.bin RV620_me.bin RV620_pfp.bin \
RV630_me.bin RV630_pfp.bin RV635_me.bin RV635_pfp.bin RV670_me.bin \
RV670_pfp.bin RV710_me.bin RV710_pfp.bin RV710_smc.bin RV710_uvd.bin \
RV730_me.bin RV730_pfp.bin RV730_smc.bin RV740_smc.bin RV770_me.bin \
RV770_pfp.bin RV770_smc.bin SUMO2_me.bin SUMO2_pfp.bin SUMO_me.bin \
SUMO_pfp.bin SUMO_rlc.bin SUMO_uvd.bin TAHITI_ce.bin TAHITI_mc.bin \
TAHITI_me.bin TAHITI_pfp.bin TAHITI_rlc.bin TAHITI_smc.bin \
TAHITI_uvd.bin TURKS_mc.bin TURKS_me.bin TURKS_pfp.bin TURKS_smc.bin \
VERDE_ce.bin VERDE_mc.bin VERDE_me.bin VERDE_pfp.bin VERDE_rlc.bin \
VERDE_smc.bin

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKDIR}/radeon/$i \
	    ${PREFIX}/firmware/radeon-${i:L:S/.bin//}
.endfor

.include <bsd.port.mk>
