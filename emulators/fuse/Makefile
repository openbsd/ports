# $OpenBSD: Makefile,v 1.5 2003/10/17 06:27:04 grange Exp $
# $RuOBSD: Makefile,v 1.7 2002/03/26 19:14:05 grange Exp $

COMMENT=		"Free Unix Spectrum Emulator"

DISTNAME=		fuse-0.6.1.1
CATEGORIES=		emulators

HOMEPAGE=		http://www.srcf.ucam.org/~pak21/spectrum/fuse.html

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.srcf.ucam.org/~pak21/spectrum/ \
		ftp://ftp.worldofspectrum.org/pub/sinclair/emulators/unix/

USE_X11=		Yes

LIB_DEPENDS=		glib.1.2::devel/glib spectrum.2::devel/libspectrum \
			765.3::devel/lib765 png.3::graphics/png \
			xml2.7::textproc/libxml

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lbz2"

FLAVORS=gtk
FLAVOR?=

.if ${FLAVOR:L:Mgtk}
LIB_DEPENDS+=		gtk.1.2,gdk.1.2::x11/gtk+
.else
CONFIGURE_ARGS=		--without-gtk
.endif

.include <bsd.port.mk>
