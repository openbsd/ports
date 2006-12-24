# $OpenBSD: Makefile,v 1.1.1.1 2006/12/24 10:59:04 jasper Exp $

COMMENT=		"gtk+-2 theme switcher"

DISTNAME=		gtk-chtheme-0.3.1
CATEGORIES=		x11 graphics

HOMEPAGE=		http://plasmasturm.org/programs/gtk-chtheme/

MASTER_SITES=		${HOMEPAGE}

EXTRACT_SUFX=		.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext Xrender atk-1.0 c cairo fontconfig freetype \
			glitz m png z

LIB_DEPENDS=		glib-2.0,gmodule-2.0,gobject-2.0::devel/glib2 \
			pango-1.0,pangocairo-1.0,pangoft2-1.0::devel/pango \
			gtk-x11-2.0,gdk_pixbuf-2.0,gdk-x11-2.0::x11/gtk+2

MODULES=		devel/gettext

USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

post-extract:
	@perl -pi -e 's,/usr,${PREFIX},; s,share/,,;' ${WRKSRC}/Metadata

.include <bsd.port.mk>
