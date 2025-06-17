COMMENT =		lossless PNG optimizer
DISTNAME =		optipng-7.9.1
CATEGORIES =		graphics

HOMEPAGE =		https://optipng.sourceforge.net/

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB += c png z

SITES =			${SITE_SOURCEFORGE:=optipng/}

LIB_DEPENDS =		graphics/png

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DOPTIPNG_USE_SYSTEM_LIBS=on

post-install:
	chmod +x ${PREFIX}/bin/optipng # ...

.include <bsd.port.mk>
