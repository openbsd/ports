# $OpenBSD: Makefile,v 1.1.1.1 2010/10/24 22:16:38 sebastia Exp $

COMMENT=	a terminal emulator for GNUstep

DISTNAME=	Terminal-0.9.7
PKGNAME=	gnustep-${DISTNAME:L}
CATEGORIES=	sysutils

HOMEPAGE=	http://gap.nongnu.org/terminal
MASTER_SITES=	http://savannah.nongnu.org/download/gap/

USE_X11=	Yes
MODULES=	converters/libiconv x11/gnustep
WANTLIB += c gnustep-base gnustep-gui m objc pthread
WANTLIB += util
LIB_DEPENDS=	::x11/gnustep/gui
RUN_DEPENDS=	:gnustep-back-*:x11/gnustep/back

.include <bsd.port.mk>
