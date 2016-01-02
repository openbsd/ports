# $OpenBSD: Makefile,v 1.2 2016/01/02 12:53:50 robert Exp $

PV=		7.0
V=		${PV}.1

BUILD_DEPENDS+=	www/apache-httpd

WANTLIB-main+=	stdc++ ncurses readline

.include <bsd.port.mk>

# XXX disable suhosin for 7.0 and enforce apache2 because apache
# is not supported anymore
FLAVORS:=
CONFIGURE_ARGS+=	--disable-suhosin \
			--with-apxs2=${LOCALBASE}/sbin/apxs2
