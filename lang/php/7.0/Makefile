# $OpenBSD: Makefile,v 1.57 2018/06/01 18:01:13 martijn Exp $

PV=		7.0
V=		${PV}.30
REVISION=	6

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
