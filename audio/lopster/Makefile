# $OpenBSD: Makefile,v 1.32 2009/08/10 06:29:52 kili Exp $

COMMENT=	full featured GTK Napster client
DISTNAME=	lopster-1.2.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lopster/}

HOMEPAGE=	http://lopster.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	X11 Xext Xi c glib gmodule m pthread pthread-stubs xcb z

MODULES=	devel/gettext

LIB_DEPENDS=	gtk.>=1.2,gdk.>=1.2::x11/gtk+ \
		gthread.>=1.2::devel/glib \
		ogg.>=4::audio/libogg \
		FLAC.>=5::audio/flac

USE_GMAKE=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
