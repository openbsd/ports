# $OpenBSD: Makefile,v 1.53 2018/05/27 19:54:17 sthen Exp $

PV=		7.0
V=		${PV}.30
REVISION=	3

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
