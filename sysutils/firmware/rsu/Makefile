# $OpenBSD: Makefile,v 1.8 2019/07/12 21:34:51 sthen Exp $

FW_DRIVER=	rsu
FW_VER=		1.2
REVISION=	1

WRKDIST=	${WRKDIR}
EXTRACT_SUFX=	.tgz

# can be redistributed, but shouldn't be in normal packages directory as
# this is only meant for use with fw_update.
PERMIT_PACKAGE=   firmware
PERMIT_DISTFILES= Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/rsu-license ${PREFIX}/firmware/rsu-license
	${INSTALL_DATA} ${WRKSRC}/rsu-rtl8712fw ${PREFIX}/firmware/rsu-rtl8712fw

.include <bsd.port.mk>
