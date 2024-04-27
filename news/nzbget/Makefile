COMMENT =	binary newsreader supporting NZB files

DIST_TUPLE =	github nzbgetcom nzbget v24.0 .

CATEGORIES =	news

HOMEPAGE =	https://nzbget.com/

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	${COMPILER_LIBCXX} boost_json c crypto curses m ssl xml2 z

# C++14
COMPILER =	base-clang ports-gcc

RUN_DEPENDS =	archivers/p7zip \
		archivers/unrar
LIB_DEPENDS =	devel/boost \
		textproc/libxml

MAKE_FLAGS =	MAKE=${MAKE_PROGRAM}
FAKE_FLAGS =	exampleconfdir=${PREFIX}/share/examples/nzbget \
		scriptsdir=${PREFIX}/share/examples/nzbget

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	--with-libcurses-includes=/usr/include \
			--with-libcurses-libraries=/usr/lib
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION =	2.65
AUTOMAKE_VERSION =	1.16

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/nzbget.conf

.include <bsd.port.mk>
