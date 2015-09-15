# $OpenBSD: Makefile,v 1.14 2015/09/15 12:34:12 robert Exp $

BROKEN-hppa =	no __sync_bool_compare_and_swap support nor asm fallback

# XXX use the bundled libtool because it needs some specific options we
# don't have.
USE_LIBTOOL=	No

PV=		5.6
V=		${PV}.13

INI_TEMPLATES=	development production

CONFIGURE_ARGS+=	--enable-mysqlnd

WANTLIB-main+=		stdc++ ncurses readline

# sybase-ct
MULTI_PACKAGES+=	-sybase_ct
COMMENT-sybase_ct=	sybase database access extensions for php5
CONFIGURE_ARGS+=	--with-sybase-ct=shared,${LOCALBASE}
LIB_DEPENDS-sybase_ct=	databases/freetds
WANTLIB-sybase_ct=	ct pthread

.include <bsd.port.mk>
