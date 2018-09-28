# $OpenBSD: Makefile,v 1.1 2018/09/28 22:22:03 sthen Exp $

PV=		7.1
V=		${PV}.22
PKGSTEM-main =	php-7.1

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
