# $OpenBSD: Makefile,v 1.40 2001/07/13 11:23:59 naddy Exp $

COMMENT=	"useful routines for C programming"

DISTNAME=	glib-1.2.10
CATEGORIES=	devel
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.gimp.org/pub/gtk/v1.2/ \
		ftp://ftp.cs.umn.edu/pub/gimp/gtk/v1.2/ \
		http://www.ameth.org/gimp/gtk/v1.2/ \
		ftp://ftp.funet.fi/pub/mirrors/ftp.gimp.org/gtk/v1.2/

HOMEPAGE=	http://www.gtk.org/

LIB_DEPENDS=	pthread.14::devel/pth

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/pth" \
		LDFLAGS="-L${LOCALBASE}/lib/pth"

post-extract:
	@rm -f ${WRKSRC}/docs/glib.info*

post-patch:
	@mv -f ${WRKSRC}/glib-config.in ${WRKSRC}/glib-config.in.new
	@sed -e s#!!PTHREAD_LIBDIR!!#${LOCALBASE}/lib/pth#g \
		${WRKSRC}/glib-config.in.new > ${WRKSRC}/glib-config.in

.include <bsd.port.mk>
