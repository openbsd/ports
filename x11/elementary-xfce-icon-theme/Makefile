COMMENT=		Elementary icon theme for Xfce

GH_ACCOUNT=		shimmerproject
GH_PROJECT=		elementary-xfce
GH_TAGNAME=		v0.20
PKGNAME =		${GH_PROJECT}-icon-theme-${GH_TAGNAME:S/v//}

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE =	gnu
NO_TEST=		Yes

RUN_DEPENDS=		x11/gtk+4,-guic
BUILD_DEPENDS =		graphics/optipng \
			x11/gtk+3

.include <bsd.port.mk>
