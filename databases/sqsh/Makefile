# $OpenBSD: Makefile,v 1.30 2019/07/12 20:44:02 sthen Exp $

COMMENT=	SQL shell for FreeTDS

DISTNAME=	sqsh-2.5.16.1
REVISION=	1
WRKDIST=	${WRKDIR}/sqsh-2.5
EXTRACT_SUFX=	.tgz

CATEGORIES=	databases shells

HOMEPAGE=	http://sourceforge.net/projects/sqsh/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c ct>=2 iconv curses m pthread readline

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sqsh/}

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
