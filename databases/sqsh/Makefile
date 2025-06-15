COMMENT=	SQL shell for FreeTDS

GH_ACCOUNT=	vonloxley
GH_PROJECT=	sqsh
GH_COMMIT=	c71e518895059ae172bfc53434f8b654dd104b7f
DISTNAME=	sqsh-3.0pre20231205

CATEGORIES=	databases shells

# original at https://sourceforge.net/projects/sqsh/
HOMEPAGE=	https://vonloxley.github.io/sqsh/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB +=	c ct>=2 iconv curses m readline

LIB_DEPENDS=	converters/libiconv \
		databases/freetds

CONFIGURE_STYLE=  autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS=	--with-readline
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		SYBASE="${LOCALBASE}"

NO_TEST=	Yes

ALL_TARGET=
FAKE_TARGET=	install install.man
FAKE_FLAGS=	SQSHRC_GLOBAL="${PREFIX}/share/examples/sqsh/global.sqshrc"

# disable broken session-locking support.
post-configure:
	perl -pi -e 's,^#define HAVE_CRYPT.*,#undef HAVE_CRYPT,' \
		${WRKSRC}/src/config.h

.include <bsd.port.mk>
