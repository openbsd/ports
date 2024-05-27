COMMENT =		advanced text mode web browser

V =			0.17.0
GH_ACCOUNT =		rkd77
GH_PROJECT =		elinks
GH_TAGNAME =		v$V
REVISION =		0

CATEGORIES =		www

# http://elinks.cz/ appears dead
HOMEPAGE =		https://github.com/rkd77/elinks

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto css curl curses dom expat iconv
WANTLIB += idn2 mujs perl sqlite3 ssl tre wapcaplet z

COMPILER =		base-clang ports-gcc

MODULES =		devel/meson
CONFIGURE_ARGS +=	-Dgpm=false \
			-Dgemini=true \
			-Dgopher=true \
			-Dnls=false \
			-Dpdfdoc=false \
			-Dapidoc=false \
			-Dmujs=true \
			-D256-colors=true \
			-Dterminfo=true \
			-Dperl=true \
			-Dhtml-highlight=true

BUILD_DEPENDS =		devel/gettext,-tools \
			textproc/xmlto
LIB_DEPENDS =		converters/libiconv \
			databases/sqlite3 \
			devel/libidn2 \
			lang/mujs \
			net/curl \
			textproc/tre \
			www/netsurf/libcss \
			www/netsurf/libdom \
			www/netsurf/libwapcaplet
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

NO_TEST =		Yes

.include <bsd.port.mk>
