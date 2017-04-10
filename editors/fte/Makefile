# $OpenBSD: Makefile,v 1.7 2017/04/10 11:45:27 sthen Exp $

COMMENT=	powerful and intuitive editor for programmers

DISTNAME=	fte-20090118
CATEGORIES=	editors devel

HOMEPAGE=	http://fte.sourceforge.net/

# GPLv2 or later / Artistic License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	X11 Xau Xdmcp Xpm c m ${LIBCXX}

MASTER_SITES=	ftp://ftp.mrsserver.net/pub/distfiles/

NO_TEST=	Yes

MAKE_ENV+=	CC="${CC}" CXX="${CXX}"

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fte
		${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/fte/

.include <bsd.port.mk>
