# $OpenBSD: Makefile,v 1.55 2018/05/27 22:05:50 sthen Exp $

PV=		7.0
V=		${PV}.30
REVISION=	4

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
