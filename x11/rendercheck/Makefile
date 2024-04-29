COMMENT=	X Render extension test suite

DISTNAME=	rendercheck-1.6
CATEGORIES=	x11
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	http://www.freedesktop.org/

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# X11/MIT
PERMIT_PACKAGE=	Yes

MODULES=	devel/meson

WANTLIB=	X11 Xext Xrender c

SITES=		${SITE_XORG:=test/}

.include <bsd.port.mk>
