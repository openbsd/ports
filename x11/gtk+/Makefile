# $OpenBSD: Makefile,v 1.51 2002/05/14 09:21:35 mark Exp $

COMMENT=	"General Toolkit for X11 GUI"

DISTNAME=	gtk+-1.2.10
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11 devel
NEED_VERSION=	1.475
MASTER_SITES=   ${MASTER_SITE_GNOME:=stable/sources/gtk+/}

HOMEPAGE=	http://www.gtk.org/

MODULES=	gettext
LIB_DEPENDS=	glib.1.2,gmodule.1.2::devel/glib

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
		patch-*

post-extract:
	@cd ${WRKSRC}/docs; rm -f gtk.info* gdk.info*

.include <bsd.port.mk>
