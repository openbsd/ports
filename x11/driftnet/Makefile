# $OpenBSD: Makefile,v 1.4 2010/07/30 06:58:57 ajacoutot Exp $

COMMENT=	network sniffer that grabs and displays images

DISTNAME=	driftnet-0.1.6
REVISION=	0
CATEGORIES=	x11

HOMEPAGE=	http://www.ex-parrot.com/~chris/driftnet/

MAINTAINER=	Claudio Jeker <claudio@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.ex-parrot.com/~chris/driftnet/

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcap pixman-1
WANTLIB += png pthread pthread-stubs xcb z

MODULES=	devel/gettext

LIB_DEPENDS=	ungif.>=5::graphics/libungif \
		jpeg.>=62::graphics/jpeg \
		gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
