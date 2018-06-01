# $OpenBSD: Makefile,v 1.56 2018/06/01 17:45:19 sthen Exp $

PV=		7.0
V=		${PV}.30
REVISION-main=	5
REVISION=	4

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
