# $OpenBSD: Makefile,v 1.16 2002/03/24 22:20:44 naddy Exp $

COMMENT=	"PalmPilot address database editor"

DISTNAME=	pi-address-0.4.0
CATEGORIES=	misc x11 palm
NEED_VERSION=	1.516

HOMEPAGE=	http://me.in-berlin.de/~miwie/pia/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	${HOMEPAGE} \
		ftp://ftp.belug.org/pub/user/mw/pilot/

MODULES=	qt
LIB_DEPENDS=	pisock::comms/pilot-link

USE_X11=		yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${MODQT_CONFIGURE_ARGS} \
			--with-pisock-dir=${LOCALBASE}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pi-address
	mv ${WRKINST}/etc/pi-addressrc ${PREFIX}/share/examples/pi-address

.include <bsd.port.mk>
