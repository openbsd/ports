COMMENT =	interactive, extensible binary editor

DISTNAME =	poke-4.0

SHARED_LIBS +=  poke                      2.0 # 1.0

CATEGORIES =	editors

HOMEPAGE =	https://www.jemarch.net/poke

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c curses gc iconv intl m pthread readline textstyle

SITES =			${SITE_GNU:=poke/}

BUILD_DEPENDS =		devel/dejagnu
LIB_DEPENDS =		devel/boehm-gc \
			devel/gettext,-runtime \
			devel/gettext,-textstyle
TEST_DEPENDS =		devel/dejagnu

CONFIGURE_STYLE =	gnu

# test failures due to missing hyperlink support in libtextstyle
CONFIGURE_ARGS +=	--disable-hserver
# don't find emacs or xemacs
CONFIGURE_ENV +=	ac_cv_prog_EMACS=

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
