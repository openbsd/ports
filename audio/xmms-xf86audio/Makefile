# $OpenBSD: Makefile,v 1.14 2013/03/10 22:55:06 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	XF86Audio multimedia-key support for XMMS
DISTNAME=	xmms-xf86audio-0.4.4
CATEGORIES=	audio
HOMEPAGE=	http://www.devin.com/xmms-xf86audio/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}download/

MODULES=	devel/gettext

LIB_DEPENDS=	audio/xmms
WANTLIB=	X11 Xext Xi m gdk glib gmodule gtk xmms>=4

MAKE_FLAGS=	CC="${CC}" OPT="${CFLAGS}" DEBUG=""
NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/xmms/General
	${INSTALL_DATA} ${WRKBUILD}/libxf86audio.so ${PREFIX}/lib/xmms/General/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmms-xf86audio
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xmms-xf86audio/

.include <bsd.port.mk>
