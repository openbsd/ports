COMMENT=	multi-platform GUI for password-store

GH_ACCOUNT=	IJHack
GH_PROJECT=	QtPass
GH_TAGNAME=	v1.8.4
PKGNAME=	${DISTNAME:L}

CATEGORIES=	security x11

HOMEPAGE=	https://qtpass.org/

MAINTAINER=	Stefan Hagen <sh+ports@codevoid.de>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6Widgets
WANTLIB += c m

MODULES=	devel/qmake \
		x11/qt6

RUN_DEPENDS=	devel/git \
		devel/desktop-file-utils \
		security/gnupg \
		security/password-store \
		security/pwgen \
		x11/gtk+4,-guic \
		x11/qt6/qtsvg

NO_TEST=	Yes

.include <bsd.port.mk>
