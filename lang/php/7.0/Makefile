# $OpenBSD: Makefile,v 1.66 2018/09/06 14:05:59 sthen Exp $

PV=		7.0
V=		${PV}.31
PKGSTEM-main =	php-7.0
REVISION-main =	1
REVISION =	0

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
