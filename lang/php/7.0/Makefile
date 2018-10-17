# $OpenBSD: Makefile,v 1.71 2018/10/17 12:44:02 sthen Exp $

PV=		7.0
V=		${PV}.32
REVISION=	2
REVISION-main=	3
REVISION-apache=3

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
