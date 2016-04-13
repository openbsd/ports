# $OpenBSD: Makefile,v 1.5 2016/04/13 10:29:16 stsp Exp $

FW_DRIVER=	iwm
FW_VER=		0.20160412

# as per the READMEs, 'The "-9" in the filename reflects an interface/
# architecture version number. It will change only when changes in new
# uCode releases make the new uCode incompatible with earlier drivers.'
# Version 9 was used up to OpenBSD 5.9. We currently ship two uCode
# versions in anticipation of an update to the driver in -current.
V9=		25.228.9.0
V16=		16.242414.0
DISTFILES=	iwlwifi-3160-ucode-${V9}.tgz \
		iwlwifi-3160-ucode-${V16}.tgz \
		iwlwifi-7260-ucode-${V9}.tgz \
		iwlwifi-7260-ucode-${V16}.tgz \
		iwlwifi-7265-ucode-${V9}.tgz \
		iwlwifi-7265-ucode-${V16}.tgz \
		iwlwifi-8000-ucode-${V16}.tgz

WRKDIST=	${WRKDIR}

HOMEPAGE=	http://www.intellinuxwireless.org/
MASTER_SITES=	https://wireless.wiki.kernel.org/_media/en/users/drivers/ \
		http://firmware.openbsd.org/firmware-dist/

do-install:
.for i in 3160 7260 7265
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-$i-ucode-${V9}/iwlwifi-$i-9.ucode ${PREFIX}/firmware/iwm-$i-9
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-$i-ucode-${V16}/iwlwifi-$i-16.ucode ${PREFIX}/firmware/iwm-$i-16
.endfor
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-7265-ucode-${V16}/iwlwifi-7265D-16.ucode ${PREFIX}/firmware/iwm-7265D-16
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-8000-ucode-${V16}/iwlwifi-8000C-16.ucode ${PREFIX}/firmware/iwm-8000C-16
	# Install the most recent license. Only difference is the (C) year.
	${INSTALL_DATA} ${WRKSRC}/iwlwifi-8000-ucode-${V16}/LICENSE.iwlwifi-8000-ucode ${PREFIX}/firmware/iwm-license

.include <bsd.port.mk>
