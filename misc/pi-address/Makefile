# $OpenBSD: Makefile,v 1.12 2000/10/04 21:54:10 jakob Exp $

DISTNAME=	pi-address-0.4.0
CATEGORIES=	misc x11
NEED_VERSION=	1.322

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	http://me.in-berlin.de/~miwie/pia/ \
		ftp://ftp.belug.org/pub/user/mw/pilot/

HOMEPAGE=	http://me.in-berlin.de/~miwie/pia/

LIB_DEPENDS=	qt.1.45::x11/qt \
		pisock::comms/pilot-link

USE_X11=		yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-pisock-dir=${LOCALBASE}
CONFIGURE_ENV+=		QTINC=${LOCALBASE}/include/X11/qt \
			QTLIB=${LOCALBASE}/lib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pi-address
	mv ${WRKINST}/etc/pi-addressrc ${PREFIX}/share/examples/pi-address

.include <bsd.port.mk>
