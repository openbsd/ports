# $OpenBSD: Makefile,v 1.4 2008/11/18 13:06:46 landry Exp $

COMMENT=	GTK-based BDF font editor

DISTNAME=	gbdfed-1.4
CATEGORIES=	x11
PKGNAME=	${DISTNAME}p0
HOMEPAGE=	http://www.math.nmsu.edu/~mleisher/Software/gbdfed/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png z

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tbz2

USE_X11=	Yes

MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0.>=1200,gdk_pixbuf-2.0.>=1200,gtk-x11-2.0.>=1200::x11/gtk+2

CONFIGURE_STYLE=gnu
# leakage from bsd.own.mk
MAKE_ENV=	STATIC=""

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/gbdfed ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/gbdfed.man ${PREFIX}/man/man1/gbdfed.1

.include <bsd.port.mk>
