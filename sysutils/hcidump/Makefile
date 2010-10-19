# $OpenBSD: Makefile,v 1.2 2010/10/19 07:43:01 espie Exp $

COMMENT=	Bluetooth packet analyzer

DISTNAME=       bluez-hcidump-1.42
LIB_DISTNAME=	bluez-libs-3.36
CATEGORIES=	sysutils
MASTER_SITES=	http://bluez.sourceforge.net/download/
HOMEPAGE=	http://www.bluez.org/

DISTFILES=	${DISTNAME}.tar.gz \
		${LIB_DISTNAME}.tar.gz

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c
LIB_DEPENDS=	bluetooth.>=2.0::devel/bluetooth-libs

MAKE_FLAGS=	"LDFLAGS+=-L${LOCALBASE}/lib"
USE_GROFF =	Yes

post-extract:
	mkdir ${WRKSRC}/bluetooth
	cp ${WRKDIR}/${LIB_DISTNAME}/include/{bluetooth.h,hci.h,hci_lib.h,l2cap.h} \
		${WRKSRC}/bluetooth
	cp ${WRKDIR}/${LIB_DISTNAME}/src/bluetooth.c ${WRKSRC}/src/bt_lib.c
	cp ${WRKDIR}/${LIB_DISTNAME}/src/hci.c ${WRKSRC}/src/hci_lib.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/hcidump ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/src/hcidump.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
