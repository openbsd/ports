# $OpenBSD: Makefile,v 1.26 2014/06/07 10:48:39 sthen Exp $

COMMENT=	SQL shell for FreeTDS

DISTNAME=	sqsh-2.5.16.1
WRKDIST=	${WRKDIR}/sqsh-2.5
EXTRACT_SUFX=	.tgz

CATEGORIES=	databases shells

HOMEPAGE=	http://sourceforge.net/projects/sqsh/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ct>=2 ncurses m pthread readline

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sqsh/}

MODULES=	converters/libiconv
LIB_DEPENDS=	databases/freetds

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

.include <bsd.port.mk>
