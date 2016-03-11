# $OpenBSD: Makefile,v 1.74 2016/03/11 19:59:12 naddy Exp $

PORTROACH=	limit:^1\.2\.

COMMENT=	useful routines for C programming

DISTNAME=	glib-1.2.10
SHARED_LIBS +=	glib                 1.2      # .1.2
SHARED_LIBS +=	gmodule              1.2      # .1.2
SHARED_LIBS +=	gthread              1.2      # .1.2

REVISION =	6

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/glib/1.2/}

HOMEPAGE=	http://www.gtk.org/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		pthread

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-static

NO_TEST=	Yes

post-extract:
	rm ${WRKSRC}/docs/glib.info*

.include <bsd.port.mk>
