# $OpenBSD: Makefile,v 1.17 2002/10/27 21:07:54 naddy Exp $

COMMENT=	"PalmPilot address database editor"

DISTNAME=	pi-address-0.4.0
CATEGORIES=	misc x11 palm

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

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${MODQT_CONFIGURE_ARGS} \
			--with-pisock-dir=${LOCALBASE}
NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pi-address
	mv ${WRKINST}/etc/pi-addressrc ${PREFIX}/share/examples/pi-address

.include <bsd.port.mk>
