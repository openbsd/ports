# $OpenBSD: Makefile,v 1.8 2006/08/03 23:15:57 espie Exp $

COMMENT=		"GUI for dctc (Direct Connect Text Clone)"

DISTNAME=		dc_gui-0.42
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net x11
HOMEPAGE=		http://ac2i.homelinux.com/dctc/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xi audiofile c esd gdk gdk_imlib \
			glib gmodule gtk iconv intl jpeg m png tiff ungif z

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		gnome.>=36,art_lgpl.>=4,gnomesupport,gnomeui.>=46::x11/gnome/libs
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:dctc-*:net/dctc

SEPARATE_BUILD=		simple
AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE= 	autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
