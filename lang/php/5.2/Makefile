# $OpenBSD: Makefile,v 1.4 2010/11/17 08:05:18 espie Exp $

# doesn't set USE_LIBTOOL but use the bundled one because it needs some
# specific options we don't have.

PV=		5.2
V=		5.2.14
SUHOSIN_V=	0.9.29
SUHOSIN_P_V=	0.9.7

DISTNAME=	php5-${V}
PKGNAME-main=	php5-${V}
PKGNAME-fastcgi=php5-fastcgi-${V}

WRKDIST=	${WRKDIR}/php-${V}

INI_TEMPLATES=	dist recommended
USE_GROFF =	Yes

# Loadable php extensions
# dbase
MULTI_PACKAGES+=	-dbase
COMMENT-dbase=		dBase database access extensions for php5
CONFIGURE_ARGS+=	--enable-dbase=shared
LIB_DEPENDS-dbase=

# mhash
MULTI_PACKAGES+=	-mhash
COMMENT-mhash=		mhash extensions for php5
CONFIGURE_ARGS+=	--with-mhash=shared,${LOCALBASE}
LIB_DEPENDS-mhash=	security/mhash
WANTLIB-mhash=		${WANTLIB} mhash>=2

# ncurses
MULTI_PACKAGES+=	-ncurses
COMMENT-ncurses=	ncurses extensions for php5
CONFIGURE_ARGS+=	--with-ncurses=shared,${LOCALBASE}
LIB_DEPENDS-ncurses=
WANTLIB-ncurses=	${WANTLIB} ncurses panel

# sybase-ct
MULTI_PACKAGES+=	-sybase_ct
COMMENT-sybase_ct=	sybase database access extensions for php5
CONFIGURE_ARGS+=        --with-sybase-ct=shared,${LOCALBASE}
LIB_DEPENDS-sybase_ct=	databases/freetds
WANTLIB-sybase_ct =	${WANTLIB} ct

.include <bsd.port.mk>
