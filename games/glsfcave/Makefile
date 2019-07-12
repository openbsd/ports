# $OpenBSD: Makefile,v 1.11 2019/07/12 20:46:18 sthen Exp $

COMMENT=	control a ribbon to avoid hitting walls

V=		1.0
DISTNAME= 	glsfcave-$V-mitl
PKGNAME=	glsfcave-$V
REVISION =	5
CATEGORIES=	games
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://user.ecc.u-tokyo.ac.jp/~s081016/glsfcave/
MASTER_SITES=	${HOMEPAGE}

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += GL GLU X11 Xext Xi Xmu c glut>=4 m pthread xcb

LIB_DEPENDS=	graphics/freeglut

WRKDIST=	${WRKDIR}/glsfcave

ALL_TARGET=	glsfcave

CFLAGS+=	-I${X11BASE}/include -I${LOCALBASE}/include
MAKE_ENV+=	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/glsfcave ${PREFIX}/bin

.include <bsd.port.mk>
