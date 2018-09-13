# $OpenBSD: Makefile,v 1.67 2018/09/13 14:15:47 sthen Exp $

PV=		7.0
V=		${PV}.32
PKGSTEM-main =	php-7.0

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
