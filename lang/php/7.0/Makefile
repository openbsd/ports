# $OpenBSD: Makefile,v 1.52 2018/05/27 16:32:44 sthen Exp $

PV=		7.0
V=		${PV}.30
REVISION=	2

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
