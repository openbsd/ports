# $OpenBSD: Makefile,v 1.14 2005/12/25 17:13:29 bernd Exp $

COMMENT=		"accessibility toolkit used by gtk+"

DISTNAME=		atk-1.10.3
PKGNAME=		${DISTNAME}p1
SHARED_LIBS=		atk-1.0 1011.3
MODGNU_SHARED_LIBS=	atk-1.0 ''
LIBatk-1.0_ALIAS=	atk_1_0

CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/atk/1.10/}
EXTRACT_SUFX=           .tar.bz2

MODULES=		devel/gettext
LIB_DEPENDS=		glib-2.0.600.0,gmodule-2.0.600.0,gobject-2.0.600.0::devel/glib2
BUILD_DEPENDS=          :pkgconfig-*:devel/pkgconfig

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static

.include <bsd.port.mk>
