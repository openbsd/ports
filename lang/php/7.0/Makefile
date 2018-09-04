# $OpenBSD: Makefile,v 1.64 2018/09/04 12:46:14 espie Exp $

PV=		7.0
V=		${PV}.31
PKGSTEM-main =	php-7.0

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
