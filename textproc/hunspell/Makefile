# $OpenBSD: Makefile,v 1.26 2019/07/12 20:49:59 sthen Exp $

COMMENT =	spelling, stemming, morphological analysis and generation


GH_ACCOUNT =	hunspell
GH_PROJECT =	hunspell
GH_TAGNAME =	v1.6.2
REVISION =	0

SHARED_LIBS =	hunspell-1.6 	0.0 #	.0.0

CATEGORIES =	textproc

HOMEPAGE =	http://hunspell.github.io/

# GPL/LGPL/MPL
PERMIT_PACKAGE =	Yes

WANTLIB += c iconv m curses readline ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		converters/libiconv

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15

# gettext-tools needed for aclocal/extern-inline.m4
BUILD_DEPENDS =	devel/gettext,-tools \

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${WRKBUILD}/src/hunspell/.libs"
CONFIGURE_ARGS =	--with-ui \
			--disable-nls \
			--with-readline

# default dictionary
RUN_DEPENDS =		textproc/mozilla-dicts/en-GB

TEST_DEPENDS =	shells/bash

pre-configure:
	${SUBST_CMD} ${WRKSRC}/tests/test.sh \
		${WRKSRC}/src/tools/hunspell.cxx \
		${WRKSRC}/man/hu/hunspell.1 \
		${WRKSRC}/man/hunspell.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/hunspell
	ln -sf ${LOCALBASE}/share/mozilla-dicts/en-GB.aff \
		${PREFIX}/share/hunspell/default.aff
	ln -sf ${LOCALBASE}/share/mozilla-dicts/en-GB.dic \
		${PREFIX}/share/hunspell/default.dic

.include <bsd.port.mk>
