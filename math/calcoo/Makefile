# $OpenBSD: Makefile,v 1.20 2005/11/15 15:40:31 wilfried Exp $

COMMENT=	"RPN and algebraic scientific calculator"

DISTNAME=	calcoo-1.3.16
PKGNAME=	${DISTNAME}p0
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

WANTLIB=	X11 \
		c fontconfig freetype m atk-1.0.800.0 cairo \
		glib-2.0.400.0 gmodule-2.0.400.0 gobject-2.0.400.0 iconv intl \
		pango-1.0.600.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk_pixbuf-2.0.400.0,gdk-x11-2.0.400.0,gtk-x11-2.0.400.0::x11/gtk+2

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
