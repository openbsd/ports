# $OpenBSD: Makefile,v 1.1.1.1 2007/05/29 03:03:52 ajacoutot Exp $

COMMENT=	"GNUstep example applications"

DISTNAME=	gnustep-examples-1.2.0
CATEGORIES=	misc

HOMEPAGE=	http://www.gnustep.org/experience/examples.html

WANTLIB=	GL GLU c m objc pthread

MASTER_SITES=	ftp://ftp.gnustep.org/pub/gnustep/core/

MODULES=	x11/gnustep
LIB_DEPENDS=	gnustep-base.>=1::x11/gnustep/base \
		gnustep-gui::x11/gnustep/gui
RUN_DEPENDS=	:gnustep-back-*:x11/gnustep/back

pre-configure:
	@perl -pi -e 's,!!X11BASE!!,${X11BASE},g' \
		${WRKSRC}/gui/MyGL/GNUmakefile

.include <bsd.port.mk>
