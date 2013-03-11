# $OpenBSD: Makefile,v 1.12 2013/03/11 11:07:40 espie Exp $

COMMENT=	go client and fully featured sgf editor

DISTNAME=	qgo-1.5.4
REVISION =	2
CATEGORIES=	games

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=	X11 Xau Xdmcp Xext ICE SM c jpeg m pthread pthread-stubs \
		stdc++ xcb

MODULES=	x11/qt3

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qgo/}

WRKDIST=	${WRKDIR}/${DISTNAME:S/-r1//}

USE_GMAKE=Yes
USE_LIBTOOL=Yes

NO_TEST= Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include \
		 --with-extra-libs=${LOCALBASE}/lib \
		 ${MODQT_CONFIGURE_ARGS}

.include <bsd.port.mk>
