# $OpenBSD: Makefile,v 1.11 2004/09/26 09:23:44 sturm Exp $

COMMENT=	"front-end to external cd audio rippers and mp3 encoders"

V=		3.0.7
DISTNAME=	grip-${V}
CATEGORIES=	audio

HOMEPAGE=	http://www.nostatic.org/grip/

MAINTAINER=	Steve Shockley <steve.shockley@shockley.net>

# GPL: http://www.nostatic.org/grip/doc/ar01s09.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=grip/}

MODULES=	devel/gettext

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+ \
		gnome.36,gnomesupport.0,gnomeui.46,art_lgpl.4::x11/gnome/libs \
		ghttp::www/libghttp \
		id3.3.8::audio/id3lib

NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-pthread"

.include <bsd.port.mk>
