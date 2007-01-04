# $OpenBSD: Makefile,v 1.27 2007/01/04 20:19:54 steven Exp $

COMMENT=	"RPN and algebraic scientific calculator"

DISTNAME=	calcoo-1.3.16
PKGNAME=	${DISTNAME}p3
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

WANTLIB=	X11 Xext Xrender c z fontconfig freetype m atk-1.0.>=800.0 \
		cairo glitz png \
		glib-2.0.>=400.0 gmodule-2.0.>=400.0 gobject-2.0.>=400.0 \
		pango-1.0.>=600.0 pangocairo-1.0 pangoft2-1.0

MODULES=	devel/gettext

LIB_DEPENDS=	gdk_pixbuf-2.0.>=400.0,gdk-x11-2.0.>=400.0,gtk-x11-2.0.>=400.0::x11/gtk+2

USE_X11=	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
