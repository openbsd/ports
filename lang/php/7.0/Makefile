# $OpenBSD: Makefile,v 1.58 2018/06/04 15:22:36 martijn Exp $

PV=		7.0
V=		${PV}.30
REVISION=	7

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
