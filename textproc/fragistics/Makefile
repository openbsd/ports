COMMENT =	Quake 3 statistics program

DISTNAME =	fragistics-1.7.0
REVISION =	3

CATEGORIES =	textproc games

HOMEPAGE =	https://fragistics.sourceforge.net/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

# License GPL + Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

SITES =			${SITE_SOURCEFORGE:=fragistics/}

RUN_DEPENDS =		devel/p5-Shell

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

pre-configure:
	rm ${WRKSRC}/src/rawfragistics*

.include <bsd.port.mk>
