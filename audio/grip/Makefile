# $OpenBSD: Makefile,v 1.7 2002/07/09 16:34:47 pvalchev Exp $

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
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-pthread"

CONFIGURE_ARGS+=	--disable-cdpar

.include <bsd.port.mk>
