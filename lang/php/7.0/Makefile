# $OpenBSD: Makefile,v 1.49 2018/05/25 14:21:17 sthen Exp $

PV=		7.0
V=		${PV}.30

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
