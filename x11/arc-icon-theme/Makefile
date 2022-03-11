COMMENT=		Arc icon theme

GH_ACCOUNT=		horst3180
GH_PROJECT=		arc-icon-theme
GH_TAGNAME=		20161122

CATEGORIES=		x11

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=		Yes

PKG_ARCH=		*
#NO_TEST =		Yes

AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16

CONFIGURE_STYLE=	autoreconf

RUN_DEPENDS=		x11/gtk+3,-guic \
			x11/moka-icon-theme

.include <bsd.port.mk>
