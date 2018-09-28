# $OpenBSD: Makefile,v 1.1 2018/09/28 22:22:03 sthen Exp $

PV=		7.2
V=		${PV}.10
PKGSTEM-main =	php-7.2

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
