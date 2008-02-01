# $OpenBSD: Makefile,v 1.10 2008/02/01 21:47:16 steven Exp $

COMMENT=		tree window manager
DISTNAME=		treewm-0.4.5
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=treewm/} \
			http://openbsd.rutgers.edu/

HOMEPAGE=		http://treewm.sourceforge.net/

MAINTAINER=		William Yodlowsky <bsd@openbsd.rutgers.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xmu Xpm Xt Xxf86vm c m stdc++

USE_GMAKE=		Yes
USE_X11=		Yes

MAKE_FLAGS=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
			PREFIX="${PREFIX}" \
			LIBS="-L${X11BASE}/lib -lXxf86vm -lXpm -lXext -lX11" \
			INCLUDES="-I${X11BASE}/include"

DESTDIRNAME=	ROOT
FAKE_FLAGS=		DOCFILES="ChangeLog PROBLEMS README README.tiling"

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/treewm
	${INSTALL_DATA} ${WRKSRC}/default.cfg ${WRKSRC}/sample.cfg \
		${PREFIX}/share/examples/treewm

.include <bsd.port.mk>
