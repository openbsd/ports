# $OpenBSD: Makefile,v 1.2 2018/10/16 11:12:12 sthen Exp $

PV=		7.2
V=		${PV}.11

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
