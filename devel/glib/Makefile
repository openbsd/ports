# $OpenBSD: Makefile,v 1.44 2001/10/06 03:37:41 brad Exp $
# Uses pthreads

COMMENT=	"useful routines for C programming"

DISTNAME=	glib-1.2.10
CATEGORIES=	devel
NEED_VERSION=	1.460
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/glib

HOMEPAGE=	http://www.gtk.org/

LIB_DEPENDS=	pthread.14:pth-1.4.*:devel/pth

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

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
		patch-*

post-extract:
	@rm -f ${WRKSRC}/docs/glib.info*

post-patch:
	@mv -f ${WRKSRC}/glib-config.in ${WRKSRC}/glib-config.in.bak
	@sed -e s#!!PTHREAD_LIBDIR!!#${LOCALBASE}/lib/pth#g \
		${WRKSRC}/glib-config.in.bak > ${WRKSRC}/glib-config.in

.include <bsd.port.mk>
