COMMENT=		themes and icons for Window Maker

DISTNAME=		WindowMaker-extra-0.1
PKGNAME=		${DISTNAME:L}
REVISION=		3
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://www.windowmaker.org/

# GPL
PERMIT_PACKAGE=	Yes

SITES=			${SITE_WINDOWMAKER:=source/release/}

RUN_DEPENDS=		x11/windowmaker

NO_TEST=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--prefix="${PREFIX}"

NO_BUILD=		Yes
PKG_ARCH=		*

.include <bsd.port.mk>
