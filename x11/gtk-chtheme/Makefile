# $OpenBSD: Makefile,v 1.7 2009/08/11 08:42:08 ajacoutot Exp $

COMMENT=		gtk+-2 theme switcher

DISTNAME=		gtk-chtheme-0.3.1
PKGNAME=		${DISTNAME}p4
CATEGORIES=		x11 graphics

HOMEPAGE=		http://plasmasturm.org/programs/gtk-chtheme/

MAINTAINER=		Vlad Glagolev <stealth@sourcemage.org>

MASTER_SITES=		${HOMEPAGE}

EXTRACT_SUFX=		.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype glitz m pixman-1 png z pthread-stubs xcb

LIB_DEPENDS=		gio-2.0,glib-2.0,gmodule-2.0,gobject-2.0::devel/glib2 \
			pango-1.0,pangocairo-1.0,pangoft2-1.0::devel/pango \
			gtk-x11-2.0,gdk_pixbuf-2.0,gdk-x11-2.0::x11/gtk+2

MODULES=		devel/gettext

USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

post-extract:
	@perl -pi -e 's,/usr,${PREFIX},; s,share/,,;' ${WRKSRC}/Metadata

.include <bsd.port.mk>
