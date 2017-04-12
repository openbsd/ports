# $OpenBSD: Makefile,v 1.15 2017/04/12 18:09:01 landry Exp $

COMMENT =	spelling, stemming, morphological analysis and generation


GH_ACCOUNT =	hunspell
GH_PROJECT =	hunspell
GH_TAGNAME =	v1.6.1
DISTNAME =	hunspell-1.6.1

SHARED_LIBS =	hunspell-1.6 	0.0 #	.0.0

CATEGORIES =	textproc

HOMEPAGE =	http://hunspell.github.io/

# GPL/LGPL/MPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncurses ncursesw readline ${LIBCXX}

MODULES =		devel/gettext

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

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
	cd ${WRKSRC} && env ${MAKE_ENV} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -vif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/hunspell
	ln -sf ${LOCALBASE}/share/mozilla-dicts/en-GB.aff \
		${PREFIX}/share/hunspell/default.aff
	ln -sf ${LOCALBASE}/share/mozilla-dicts/en-GB.dic \
		${PREFIX}/share/hunspell/default.dic

.include <bsd.port.mk>
