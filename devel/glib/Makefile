# $OpenBSD: Makefile,v 1.49 2002/11/13 16:46:39 brad Exp $
# Uses pthreads

COMMENT=	"useful routines for C programming"

DISTNAME=	glib-1.2.10
CATEGORIES=	devel
NEED_VERSION=	1.500
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/glib/1.2/}

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

.include <bsd.port.mk>
