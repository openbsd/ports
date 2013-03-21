# $OpenBSD: Makefile,v 1.23 2013/03/21 08:48:55 ajacoutot Exp $

COMMENT=	GNOME http client library

DISTNAME=	libghttp-1.0.9
REVISION=	2
CATEGORIES=	www
SHARED_LIBS=	ghttp	1.0
MODGNU_SHARED_LIBS=ghttp ''

HOMEPAGE=	http://www.gnome.org/

MASTER_SITES=	$(MASTER_SITE_GNOME:=sources/libghttp/1.0/)

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes


SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
