# $OpenBSD: Makefile,v 1.7 2017/07/12 09:02:28 sthen Exp $

FW_DRIVER=	rsu
FW_VER=		1.2
REVISION=	1

WRKDIST=	${WRKDIR}
EXTRACT_SUFX=	.tgz

# can be redistributed, but shouldn't be in normal packages directory as
# this is only meant for use with fw_update.
PERMIT_PACKAGE_CDROM=	firmware
PERMIT_PACKAGE_FTP=	firmware
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/rsu-license ${PREFIX}/firmware/rsu-license
	${INSTALL_DATA} ${WRKSRC}/rsu-rtl8712fw ${PREFIX}/firmware/rsu-rtl8712fw

.include <bsd.port.mk>
