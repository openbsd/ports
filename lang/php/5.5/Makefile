# $OpenBSD: Makefile,v 1.39 2015/07/15 16:03:07 ajacoutot Exp $

BROKEN-hppa =	no __sync_bool_compare_and_swap support nor asm fallback

REVISION-fpm=	0

# XXX use the bundled libtool because it needs some specific options we
# don't have.
USE_LIBTOOL=	No

PV=		5.5
V=		${PV}.27

INI_TEMPLATES=	development production

CONFIGURE_ARGS+=	--enable-mysqlnd

# sybase-ct
MULTI_PACKAGES+=	-sybase_ct
COMMENT-sybase_ct=	sybase database access extensions for php5
CONFIGURE_ARGS+=	--with-sybase-ct=shared,${LOCALBASE}
LIB_DEPENDS-sybase_ct=	databases/freetds
WANTLIB-sybase_ct=	ct pthread

.include <bsd.port.mk>
