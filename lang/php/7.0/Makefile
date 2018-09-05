# $OpenBSD: Makefile,v 1.65 2018/09/05 08:52:59 espie Exp $

PV=		7.0
V=		${PV}.31
PKGSTEM-main =	php-7.0
REVISION-main =	0

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
