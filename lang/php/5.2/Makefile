# $OpenBSD: Makefile,v 1.32 2012/11/28 10:47:12 sthen Exp $

# doesn't set USE_LIBTOOL but use the bundled one because it needs some
# specific options we don't have.

PV=		5.2
V=		5.2.17
SUHOSIN_PHPV=	5.2.16
SUHOSIN_P_V=	0.9.7

REVISION=		13
REVISION-imap=		14

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

.include <bsd.port.arch.mk>
.if ${FLAVOR:L:Map2}
BUILD_PACKAGES :=	${BUILD_PACKAGES:N-fastcgi}
.endif

.include <bsd.port.mk>
