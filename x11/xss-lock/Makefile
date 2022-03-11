COMMENT=	use external locker as X screen saver

V=		0.3.0
DISTNAME=	xss-lock-$V
DISTFILES=	xss-lock-{v}$V.tar.gz
WRKDIST=	${WRKDIR}/raymonad-xss-lock-94aec045ffd6

CATEGORIES=	x11

HOMEPAGE=	https://bitbucket.org/raymonad/xss-lock/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 intl xcb xcb-screensaver
WANTLIB += xcb-util

MASTER_SITES=	https://bitbucket.org/raymonad/xss-lock/get/

MODULES=	devel/cmake
LIB_DEPENDS=	devel/glib2
BUILD_DEPENDS=	textproc/py-docutils,python3
NO_TEST=	Yes

.include <bsd.port.mk>
