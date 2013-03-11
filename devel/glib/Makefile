# $OpenBSD: Makefile,v 1.66 2013/03/11 10:50:04 espie Exp $
# Uses pthreads

COMMENT=	useful routines for C programming

DISTNAME=	glib-1.2.10
REVISION =	4
SHARED_LIBS +=	glib                 1.2      # .1.2
SHARED_LIBS +=	gmodule              1.2      # .1.2
SHARED_LIBS +=	gthread              1.2      # .1.2

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
USE_LIBTOOL=	Yes

post-extract:
	@rm -f ${WRKSRC}/docs/glib.info*

.include <bsd.port.mk>
