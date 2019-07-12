# $OpenBSD: Makefile,v 1.12 2019/07/12 20:46:05 sthen Exp $

COMMENT=	powerful and intuitive editor for programmers

DISTNAME=	fte-20090118
REVISION =	2
CATEGORIES=	editors devel

HOMEPAGE=	http://fte.sourceforge.net/

# GPLv2 or later / Artistic License
PERMIT_PACKAGE=	Yes

WANTLIB+=	X11 Xau Xdmcp Xpm c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	ftp://ftp.mrsserver.net/pub/distfiles/

NO_TEST=	Yes

MAKE_ENV+=	CC="${CC}" CXX="${CXX}"

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fte
		${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/fte/

.include <bsd.port.mk>
