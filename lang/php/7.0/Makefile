# $OpenBSD: Makefile,v 1.54 2018/05/27 20:23:19 martijn Exp $

PV=		7.0
V=		${PV}.30
REVISION=	3
REVISION-main=	4

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
