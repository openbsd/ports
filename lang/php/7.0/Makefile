# $OpenBSD: Makefile,v 1.7 2016/03/17 16:54:12 sthen Exp $

PV=		7.0
V=		${PV}.4

BUILD_DEPENDS+=	www/apache-httpd

WANTLIB-main+=	stdc++ ncurses readline

.include <bsd.port.mk>

# XXX disable suhosin for 7.0 and enforce apache2 because apache
# is not supported anymore
FLAVORS:=
CONFIGURE_ARGS+=	--disable-suhosin \
			--with-apxs2=${LOCALBASE}/sbin/apxs2
