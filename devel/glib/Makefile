# $OpenBSD: Makefile,v 1.46 2002/01/07 14:32:07 brad Exp $
# Uses pthreads

COMMENT=	"useful routines for C programming"

DISTNAME=	glib-1.2.10
CATEGORIES=	devel
NEED_VERSION=	1.500
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/glib

HOMEPAGE=	http://www.gtk.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
		patch-*

NO_REGRESS=	Yes

post-extract:
	@rm -f ${WRKSRC}/docs/glib.info*

post-patch:
	@mv -f ${WRKSRC}/glib-config.in ${WRKSRC}/glib-config.in.bak
	@sed -e s#!!PTHREAD_LIBDIR!!#${LOCALBASE}/lib/pth#g \
		${WRKSRC}/glib-config.in.bak > ${WRKSRC}/glib-config.in

.include <bsd.port.mk>
