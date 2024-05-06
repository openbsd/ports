PORTROACH =	skipv:0.3.5

COMMENT =	language model data for libkkc

VERSION =	0.2.7
DISTNAME =	libkkc-data-${VERSION}
REVISION =	1

CATEGORIES =	inputmethods japanese

# GPLv3
PERMIT_PACKAGE =	Yes

SITES =			https://github.com/ueno/libkkc/releases/download/v0.3.5/
EXTRACT_SUFX =		.tar.xz

MODULES =		lang/python

BUILD_DEPENDS =		textproc/libmarisa,-python
RUN_DEPENDS =		inputmethods/libkkc

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
