# $OpenBSD: Makefile,v 1.1.1.1 2002/07/25 09:17:41 nino Exp $

COMMENT=		"accessibility toolkit used by gtk+"

DISTNAME=		atk-1.0.2
CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org
MAINTAINER=		Nils Nordman <nino@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.gtk.org/pub/gtk/v2.0/
EXTRACT_SUFX=           .tar.bz2

MODULES=		iconv gettext
LIB_DEPENDS=		glib-2.0.=0,gmodule-2.0.=0,gobject-2.0.=0::devel/glib2
BUILD_DEPENDS=          :pkgconfig-*:devel/pkgconfig
RUN_DEPENDS=		${BUILD_DEPENDS}

SEPARATE_BUILD=		simple
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static

.include <bsd.port.mk>
