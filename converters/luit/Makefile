COMMENT =		filter to convert between UTF-8 and other locales

DISTNAME =		luit-20250912

CATEGORIES =		converters

HOMEPAGE =		https://invisible-island.net/luit/luit.html

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c iconv util z

SITES =			https://invisible-mirror.net/archives/luit/ \
			ftp://ftp.invisible-island.net/luit/
EXTRACT_SUFX =		.tgz

LIB_DEPENDS =		converters/libiconv

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
