# $OpenBSD: Makefile,v 1.41 2013/06/18 14:22:30 sthen Exp $

# XXX use the bundled libtool because it needs some specific options we
# don't have.
USE_LIBTOOL=	No

PV=		5.2
V=		5.2.17
SUHOSIN_PHPV=	5.2.16
SUHOSIN_P_V=	0.9.7

REVISION=		14
REVISION-main=		15
REVISION-fastcgi=	15
REVISION-fpm=		15
REVISION-imap=		15
REVISION-mysql=		16
REVISION-mysqli=	16
REVISION-pdo_mysql=	16

# remove if updating; defaulting to tar.bz2 but there's no point
# fetching new files for 5.2 unless it's updated.
DISTFILES=	php-${V}.tar.gz

INI_TEMPLATES=	dist recommended

# dbase
MULTI_PACKAGES+=	-dbase
COMMENT-dbase=		dBase database access extensions for php5
CONFIGURE_ARGS+=	--enable-dbase=shared
LIB_DEPENDS-dbase=
WANTLIB-dbase=		c pthread

# mhash
MULTI_PACKAGES+=	-mhash
COMMENT-mhash=		mhash extensions for php5
CONFIGURE_ARGS+=	--with-mhash=shared,${LOCALBASE}
LIB_DEPENDS-mhash=	security/mhash
WANTLIB-mhash=		c mhash>=2 pthread

# ncurses
MULTI_PACKAGES+=	-ncurses
COMMENT-ncurses=	ncurses extensions for php5
CONFIGURE_ARGS+=	--with-ncurses=shared,${LOCALBASE}
LIB_DEPENDS-ncurses=
WANTLIB-ncurses=	c ncurses panel pthread

# sybase-ct
MULTI_PACKAGES+=	-sybase_ct
COMMENT-sybase_ct=	sybase database access extensions for php5
CONFIGURE_ARGS+=        --with-sybase-ct=shared,${LOCALBASE}
LIB_DEPENDS-sybase_ct=	databases/freetds
WANTLIB-sybase_ct=	c ct pthread

.include <bsd.port.mk>
