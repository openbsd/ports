# $OpenBSD: Makefile,v 1.24 2012/11/20 22:17:29 sthen Exp $

COMMENT=	SQL shell for FreeTDS

DISTNAME=	sqsh-2.1.8

CATEGORIES=	databases shells

HOMEPAGE=	http://www.sqsh.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c ct>=2 curses m readline

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sqsh/}

MODULES=	devel/gettext
LIB_DEPENDS=	databases/freetds

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=	--with-readline
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		SYBASE="${LOCALBASE}"

NO_REGRESS=	Yes

ALL_TARGET=
FAKE_TARGET=	install install.man
FAKE_FLAGS=	SQSHRC_GLOBAL="${PREFIX}/share/examples/sqsh/global.sqshrc"

.include <bsd.port.mk>
