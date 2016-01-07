# $OpenBSD: Makefile,v 1.3 2016/01/07 18:06:45 sthen Exp $

PV=		7.0
V=		${PV}.1

REVISION-main=	0

BUILD_DEPENDS+=	www/apache-httpd

WANTLIB-main+=	stdc++ ncurses readline

.include <bsd.port.mk>

# XXX disable suhosin for 7.0 and enforce apache2 because apache
# is not supported anymore
FLAVORS:=
CONFIGURE_ARGS+=	--disable-suhosin \
			--with-apxs2=${LOCALBASE}/sbin/apxs2
