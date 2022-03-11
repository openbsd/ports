COMMENT =	interactive, extensible binary editor

DISTNAME =	poke-1.0

SHARED_LIBS +=  poke                      0.0 # 0.0

CATEGORIES =	editors

HOMEPAGE =	http://www.jemarch.net/poke

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c curses gc iconv intl json-c m pthread readline textstyle

MASTER_SITES =		${MASTER_SITE_GNU:=poke/}

BUILD_DEPENDS =		devel/dejagnu
LIB_DEPENDS =		devel/boehm-gc \
			devel/gettext,-runtime \
			devel/gettext,-textstyle \
			devel/json-c
TEST_DEPENDS =		devel/dejagnu

CONFIGURE_STYLE =	gnu

# test failures due to missing hyperlink support in libtextstyle
CONFIGURE_ARGS +=	--disable-hserver
# upstream recommends against packaging gui as it's just a tool for testing
CONFIGURE_ARGS +=	--disable-gui

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
