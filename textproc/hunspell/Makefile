COMMENT =	spelling, stemming, morphological analysis and generation

V =		1.7.2
DISTNAME =	hunspell-$V

SHARED_LIBS =	hunspell-1.7	1.0 # 0.0

CATEGORIES =	textproc

SITES =		https://github.com/hunspell/hunspell/releases/download/v$V/
HOMEPAGE =	https://hunspell.github.io/

# GPL/LGPL/MPL
PERMIT_PACKAGE =	Yes

WANTLIB += c iconv m curses readline ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		converters/libiconv

CONFIGURE_STYLE =	gnu
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
