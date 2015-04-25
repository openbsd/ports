# $OpenBSD: Makefile,v 1.4 2015/04/25 09:36:03 sthen Exp $

FW_DRIVER=	iwm
FW_VER=		0.20141130
REVISION=	0

# as per the READMEs, 'The "-9" in the filename reflects an interface/
# architecture version number. It will change only when changes in new
# uCode releases make the new uCode incompatible with earlier drivers.'
DRIVERREV=	9
V=		25.228.9.0
DISTFILES=	iwlwifi-3160-ucode-$V.tgz \
		iwlwifi-7260-ucode-$V.tgz \
		iwlwifi-7265-ucode-$V.tgz

# Files for the newer driver interface, as of 2015-01-12, would be:
# DRIVERREV=	10
# V=		23.11.10.0

WRKDIST=	${WRKDIR}

HOMEPAGE=	http://www.intellinuxwireless.org/
MASTER_SITES=	https://wireless.wiki.kernel.org/_media/en/users/drivers/ \
		http://firmware.openbsd.org/firmware-dist/

do-install:
.for i in 3160 7260 7265
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-$i-ucode-$V/LICENSE.iwlwifi-$i-ucode ${PREFIX}/firmware/iwm-license
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-$i-ucode-$V/iwlwifi-$i-${DRIVERREV}.ucode ${PREFIX}/firmware/iwm-$i-${DRIVERREV}
.endfor

.include <bsd.port.mk>
