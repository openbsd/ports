# $OpenBSD: Makefile,v 1.63 2018/08/01 14:38:01 sthen Exp $

PV=		7.0
V=		${PV}.31

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
