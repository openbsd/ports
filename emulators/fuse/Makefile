# $OpenBSD: Makefile,v 1.1.1.1 2002/02/27 00:37:10 naddy Exp $
# $RuOBSD: Makefile,v 1.4 2002/02/12 02:37:09 grange Exp $

COMMENT=		"Free Unix Spectrum Emulator"

DISTNAME=		fuse-0.4.1
CATEGORIES=		emulators
NEED_VERSION=		1.504

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

post-extract:
	@ln -s ${FILESDIR}/sunsound.c ${WRKSRC}
	@ln -s ${FILESDIR}/sunsound.h ${WRKSRC}

.include <bsd.port.mk>
