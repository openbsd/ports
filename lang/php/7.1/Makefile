# $OpenBSD: Makefile,v 1.4 2018/10/17 12:44:02 sthen Exp $

PV=		7.1
V=		${PV}.23
REVISION=	0
REVISION-main=	1
REVISION-apache=1

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
