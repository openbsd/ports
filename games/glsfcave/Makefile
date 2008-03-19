# $OpenBSD: Makefile,v 1.1.1.1 2008/03/19 20:22:09 simon Exp $

COMMENT=	control a ribbon to avoid hitting walls

V=		1.0
DISTNAME= 	glsfcave-$V-mitl
PKGNAME=	glsfcave-$V
CATEGORIES=	games
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://user.ecc.u-tokyo.ac.jp/~g650192/glsfcave/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	GL GLU X11 Xext Xi Xmu c m

LIB_DEPENDS=	glut::graphics/glut

WRKDIST=	${WRKDIR}/glsfcave

ALL_TARGET=	glsfcave

CFLAGS+=	-I${X11BASE}/include -I${LOCALBASE}/include
MAKE_ENV+=	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/glsfcave ${PREFIX}/bin

.include <bsd.port.mk>
