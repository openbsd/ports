# $OpenBSD: Makefile,v 1.3 2002/11/18 21:44:24 naddy Exp $
# $RuOBSD: Makefile,v 1.7 2002/03/26 19:14:05 grange Exp $

COMMENT=		"Free Unix Spectrum Emulator"

DISTNAME=		fuse-0.5.0
CATEGORIES=		emulators

HOMEPAGE=		http://www.srcf.ucam.org/~pak21/spectrum/fuse.html

MAINTAINER=		Alexander Yurchenko <grange@rt.mipt.ru>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.srcf.ucam.org/~pak21/spectrum/ \
		ftp://ftp.worldofspectrum.org/pub/sinclair/emulators/unix/

USE_X11=		Yes
LIB_DEPENDS=		glib.1.2::devel/glib

CONFIGURE_STYLE=	gnu

FLAVORS=gtk
FLAVOR?=

.if ${FLAVOR:L:Mgtk}
LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+
.else
CONFIGURE_ARGS=		--without-gtk
.endif

.include <bsd.port.mk>
