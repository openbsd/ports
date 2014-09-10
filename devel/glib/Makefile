# $OpenBSD: Makefile,v 1.69 2014/09/10 07:07:25 jasper Exp $

PORTROACH=	limit:^1

COMMENT=	useful routines for C programming

DISTNAME=	glib-1.2.10
SHARED_LIBS +=	glib                 1.2      # .1.2
SHARED_LIBS +=	gmodule              1.2      # .1.2
SHARED_LIBS +=	gthread              1.2      # .1.2

REVISION =	5

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/glib/1.2/}

HOMEPAGE=	http://www.gtk.org/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		pthread

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

NO_TEST=	Yes

post-extract:
	@rm -f ${WRKSRC}/docs/glib.info*

.include <bsd.port.mk>
