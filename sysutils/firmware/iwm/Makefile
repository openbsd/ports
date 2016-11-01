# $OpenBSD: Makefile,v 1.7 2016/11/01 14:16:43 stsp Exp $

FW_DRIVER=	iwm
FW_VER=		0.20161101

# As per the READMEs, the "-16" in the filename reflects an interface/
# architecture version number. It will change only when changes in new
# uCode releases make the new uCode incompatible with earlier drivers.
V16=		16.242414.0
DISTFILES=	iwlwifi-3160-ucode-${V16}.tgz \
		iwlwifi-7260-ucode-${V16}.tgz \
		iwlwifi-7265-ucode-${V16}.tgz \
		iwlwifi-8000-ucode-${V16}.tgz

WRKDIST=	${WRKDIR}

HOMEPAGE=	http://www.intellinuxwireless.org/
MASTER_SITES=	https://wireless.wiki.kernel.org/_media/en/users/drivers/ \
		http://firmware.openbsd.org/firmware-dist/

do-install:
.for i in 3160 7260 7265
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-$i-ucode-${V16}/iwlwifi-$i-16.ucode ${PREFIX}/firmware/iwm-$i-16
.endfor
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-7265-ucode-${V16}/iwlwifi-7265D-16.ucode ${PREFIX}/firmware/iwm-7265D-16
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-8000-ucode-${V16}/iwlwifi-8000C-16.ucode ${PREFIX}/firmware/iwm-8000C-16
	# Install the most recent license. Only difference is the (C) year.
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-8000-ucode-${V16}/LICENSE.iwlwifi-8000-ucode ${PREFIX}/firmware/iwm-license

.include <bsd.port.mk>
