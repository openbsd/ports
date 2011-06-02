# $OpenBSD: Makefile,v 1.2 2011/06/02 17:09:32 kili Exp $

COMMENT=	fine-grained privileges PolicyKit helper for CUPS

DISTNAME=	cups-pk-helper-0.1.2
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	print sysutils

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c cups dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 pcre polkit-gobject-1 pthread
WANTLIB += z

MASTER_SITES=	http://www.freedesktop.org/software/cups-pk-helper/releases/

MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	sysutils/polkit \
		x11/dbus-glib \
		print/cups

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/cups-pk-helper

.include <bsd.port.mk>
