# $OpenBSD: Makefile,v 1.12 2013/07/12 07:26:48 ajacoutot Exp $

COMMENT=	fine-grained privileges PolicyKit helper for CUPS

DISTNAME=	cups-pk-helper-0.2.5
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	print sysutils

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/cups-pk-helper

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cups gio-2.0 glib-2.0 gobject-2.0 polkit-gobject-1
WANTLIB += pthread

MASTER_SITES=	http://www.freedesktop.org/software/cups-pk-helper/releases/

MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	sysutils/polkit \
		print/cups,-libs

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/cups-pk-helper

.include <bsd.port.mk>
