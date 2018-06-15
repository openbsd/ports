# $OpenBSD: Makefile,v 1.61 2018/06/15 10:20:53 sthen Exp $

PV=		7.0
V=		${PV}.30
REVISION=	8
REVISION-apache= 9
REVISION-gd=	9
REVISION-main=	10

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
