# $OpenBSD: Makefile,v 1.5 2012/03/28 09:07:51 ajacoutot Exp $

COMMENT=	fine-grained privileges PolicyKit helper for CUPS

DISTNAME=	cups-pk-helper-0.2.2
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	print sysutils

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c cups gio-2.0 glib-2.0 gobject-2.0 polkit-gobject-1
WANTLIB += pthread

MASTER_SITES=	http://www.freedesktop.org/software/cups-pk-helper/releases/

MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	sysutils/polkit \
		print/cups

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/cups-pk-helper

.include <bsd.port.mk>
