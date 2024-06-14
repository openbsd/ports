COMMENT=		generic spell checking library

V=			2.8.1
DISTNAME=		enchant-${V}
PKGNAME=		enchant2-${V}

SHARED_LIBS +=  enchant-2            1.2      # 10.1

CATEGORIES=		textproc

HOMEPAGE=		https://abiword.github.io/enchant/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} aspell c curses ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 hunspell-1.7 iconv intl m pcre2-8
WANTLIB += z

SITES=			https://github.com/AbiWord/enchant/releases/download/v${V}/

# c++11
COMPILER=		base-clang ports-gcc

USE_GMAKE=		Yes

LIB_DEPENDS=		devel/glib2 \
			textproc/aspell/core \
			textproc/hunspell

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_prog_VALGRIND=

CONFIGURE_ARGS=		--without-applespell \
			--without-voikko \
			--without-zemberek \
			--without-nuspell

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# prevent conflict with textproc/enchant
MAKE_FLAGS=		pkgdatadir=${TRUEPREFIX}/share/enchant-2
FAKE_FLAGS=		pkgdatadir=${PREFIX}/share/enchant-2

post-install:
	rm ${PREFIX}/lib/enchant-2/*.{a,la}

.include <bsd.port.mk>
