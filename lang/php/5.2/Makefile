# $OpenBSD: Makefile,v 1.1.1.1 2010/06/27 20:28:44 robert Exp $

# doesn't set USE_LIBTOOL but use the bundled one because it needs some
# specific options we don't have.

PV=		5.2
V=		5.2.13
SUHOSIN_V=	0.9.29
SUHOSIN_P_V=	0.9.7

INI_TEMPLATES=	dist recommended

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
LIB_DEPENDS-mhash=	mhash.>=2::security/mhash

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
LIB_DEPENDS-sybase_ct=	ct::databases/freetds

.include <bsd.port.mk>
