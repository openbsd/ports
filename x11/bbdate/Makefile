COMMENT=	displays the date and resembles the toolbar

DISTNAME=	bbdate-0.2.4
REVISION=	4
CATEGORIES=	x11
SITES=		${SITE_SOURCEFORGE:=bbtools/}
HOMEPAGE=	http://bbtools.sourceforge.net/download.php?file=3

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
