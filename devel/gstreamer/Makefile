# $OpenBSD: Makefile,v 1.10 2007/01/08 14:34:08 espie Exp $

COMMENT-main=		"streaming media framework - core"
COMMENT-frontend=	"streaming media framework - frontend commands"

VERSION=		0.8
SUBST_VARS+=		VERSION

DISTNAME=		gstreamer-0.8.11
PKGNAME-main=		${DISTNAME}p2

PKGNAME-frontend=	gstreamer-frontend-0.8.11
SHARED_LIBS +=	gstreamer-0.8        5.0      # .5.0
SHARED_LIBS +=	gstcontrol-0.8       5.0      # .5.0

MULTI_PACKAGES=		-main -frontend
CATEGORIES=		devel

HOMEPAGE=		http://www.gstreamer.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pthread z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gstreamer/0.8/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		gettext

MULTI_PACKAGES=		-main -frontend

BUILD_DEPENDS=		:bison-*:devel/bison
LIB_DEPENDS=	glib-2.0.>=200.0,gmodule-2.0.>=200.0,gobject-2.0.>=200.0,gthread-2.0.>=200.0::devel/glib2 \
			popt.>=0.3::devel/popt \
			xml2.>=6::textproc/libxml

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
YACC=			bison
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--localstatedir=/var/db
CONFIGURE_ARGS+=	--with-cachedir=/var/db/gstreamer
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
