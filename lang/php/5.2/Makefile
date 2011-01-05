# $OpenBSD: Makefile,v 1.5 2011/01/05 09:31:23 robert Exp $

# doesn't set USE_LIBTOOL but use the bundled one because it needs some
# specific options we don't have.

PV=		5.2
V=		5.2.16
SUHOSIN_P_V=	0.9.7

INI_TEMPLATES=	dist recommended

# dbase
MULTI_PACKAGES+=	-dbase
COMMENT-dbase=		dBase database access extensions for php5
CONFIGURE_ARGS+=	--enable-dbase=shared
LIB_DEPENDS-dbase=
WANTLIB-dbase=

# mhash
MULTI_PACKAGES+=	-mhash
COMMENT-mhash=		mhash extensions for php5
CONFIGURE_ARGS+=	--with-mhash=shared,${LOCALBASE}
LIB_DEPENDS-mhash=	security/mhash
WANTLIB-mhash=		mhash>=2

# ncurses
MULTI_PACKAGES+=	-ncurses
COMMENT-ncurses=	ncurses extensions for php5
CONFIGURE_ARGS+=	--with-ncurses=shared,${LOCALBASE}
LIB_DEPENDS-ncurses=
WANTLIB-ncurses=	ncurses panel

# sybase-ct
MULTI_PACKAGES+=	-sybase_ct
COMMENT-sybase_ct=	sybase database access extensions for php5
CONFIGURE_ARGS+=        --with-sybase-ct=shared,${LOCALBASE}
LIB_DEPENDS-sybase_ct=	databases/freetds
WANTLIB-sybase_ct=	ct

.include <bsd.port.mk>
