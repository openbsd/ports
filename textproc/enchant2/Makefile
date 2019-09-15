# $OpenBSD: Makefile,v 1.9 2019/09/15 11:05:32 ajacoutot Exp $

COMMENT=		generic spell checking library

V=			2.2.7
DISTNAME=		enchant-${V}
PKGNAME=		enchant2-${V}

SHARED_LIBS +=  enchant-2                 0.1 # 4.7

CATEGORIES=		textproc

HOMEPAGE=		https://abiword.github.io/enchant/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} aspell c glib-2.0 gmodule-2.0 hunspell-1.6
WANTLIB += iconv intl m pcre

MASTER_SITES =		https://github.com/AbiWord/enchant/releases/download/v${V}/

# c++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS=		devel/glib2 \
			textproc/aspell/core \
			textproc/hunspell

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_prog_VALGRIND=

CONFIGURE_ARGS=		--without-applespell \
			--without-voikko \
			--without-zemberek

# prevent conflict with textproc/enchant
MAKE_FLAGS=		pkgdatadir=${TRUEPREFIX}/share/enchant-2
FAKE_FLAGS=		pkgdatadir=${PREFIX}/share/enchant-2

post-install:
	rm ${PREFIX}/lib/enchant-2/*.{a,la}

.include <bsd.port.mk>
