# $OpenBSD: Makefile,v 1.6 2002/05/07 21:05:33 lebel Exp $

COMMENT=	"front-end to external cd audio rippers and mp3 encoders"

V=			3.0.0
DISTNAME=		grip-${V}
CATEGORIES=		audio
NEED_VERSION=		1.515
EXTRACT_SUFX=		.tar.gz

MAINTAINER=		David Lebel <lebel@openbsd.org>

HOMEPAGE=		http://www.nostatic.org/grip/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.nostatic.org/grip/

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+ \
		gnome.36,gnomesupport.0,gnomeui.46,art_lgpl.4::x11/gnome/libs \
		ghttp::www/libghttp \
		id3.3.8::audio/id3lib

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I/usr/local/include -pthread" \
			LDFLAGS="-L/usr/local/lib -pthread"

CONFIGURE_ARGS+=	--disable-cdpar

.include <bsd.port.mk>
