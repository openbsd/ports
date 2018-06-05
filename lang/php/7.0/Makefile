# $OpenBSD: Makefile,v 1.59 2018/06/05 12:50:29 sthen Exp $

PV=		7.0
V=		${PV}.30
REVISION=	8

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
