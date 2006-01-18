# $OpenBSD: Makefile,v 1.21 2006/01/18 21:17:00 steven Exp $

COMMENT=	"RPN and algebraic scientific calculator"

DISTNAME=	calcoo-1.3.16
PKGNAME=	${DISTNAME}p1
CATEGORIES=	math
HOMEPAGE=	http://calcoo.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=calcoo/} \
		http://www.physics.umn.edu/~kaminski/calcoo/

WANTLIB=	X11 Xext Xft Xrender \
		c fontconfig freetype m atk-1.0.800.0 \
		glib-2.0.400.0 gmodule-2.0.400.0 gobject-2.0.400.0 \
		pango-1.0.600.0 pangox-1.0.0.0 pangoxft-1.0.0.0 pangoft2-1.0.0.0

MODULES=	devel/gettext

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk_pixbuf-2.0.400.0,gdk-x11-2.0.400.0,gtk-x11-2.0.400.0::x11/gtk+2

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
