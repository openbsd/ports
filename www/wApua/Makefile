COMMENT=		browser for wap/wml

DISTNAME=		wApua-0.06
REVISION=		1
CATEGORIES=		www

HOMEPAGE=		http://fsinfo.noone.org/~abe/wApua/

# GPL
PERMIT_PACKAGE=	Yes

SITES=			${HOMEPAGE}

CONFIGURE_STYLE=	perl

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		www/p5-libwww \
			www/p5-HTML-Parser \
			www/p5-URI \
			x11/p5-Tk

NO_TEST=		Yes
PKG_ARCH=		*

.include <bsd.port.mk>
