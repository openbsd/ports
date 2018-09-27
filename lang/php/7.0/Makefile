# $OpenBSD: Makefile,v 1.69 2018/09/27 22:55:53 sthen Exp $

PV=		7.0
V=		${PV}.32
PKGSTEM-main=	php-7.0
REVISION=	1

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
