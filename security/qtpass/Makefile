COMMENT=	multi-platform GUI for password-store

GH_ACCOUNT=	IJHack
GH_PROJECT=	QtPass
GH_TAGNAME=	v1.3.2
REVISION=	0
PKGNAME=	${DISTNAME:L}

CATEGORIES=	security x11

HOMEPAGE=	https://qtpass.org/

MAINTAINER=	Stefan Hagen <sh+ports@codevoid.de>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB+=	${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Widgets
WANTLIB+=	c m

MODULES=	devel/qmake \
		x11/qt5

RUN_DEPENDS=	devel/git \
		security/gnupg>=2.2.23p1 \
		security/password-store \
		security/pwgen

NO_TEST=	Yes

.include <bsd.port.mk>
