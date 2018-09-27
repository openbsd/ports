# $OpenBSD: Makefile,v 1.68 2018/09/27 16:40:11 sthen Exp $

PV=		7.0
V=		${PV}.32
PKGSTEM-main =	php-7.0
REVISION-main=	0

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
