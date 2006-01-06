# $OpenBSD: Makefile,v 1.56 2006/01/06 19:41:24 bernd Exp $
# Uses pthreads

COMMENT=	"useful routines for C programming"

DISTNAME=	glib-1.2.10
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	glib	1.2 \
		gmodule	1.2 \
		gthread	1.2

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/glib/1.2/}

HOMEPAGE=	http://www.gtk.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		pthread

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

NO_REGRESS=	Yes
USE_LIBTOOL=	Yes

post-extract:
	@rm -f ${WRKSRC}/docs/glib.info*

.include <bsd.port.mk>
