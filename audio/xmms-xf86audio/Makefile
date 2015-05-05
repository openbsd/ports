# $OpenBSD: Makefile,v 1.15 2015/05/05 17:00:16 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	XF86Audio multimedia-key support for XMMS
DISTNAME=	xmms-xf86audio-0.4.4
CATEGORIES=	audio
HOMEPAGE=	http://www.devin.com/xmms-xf86audio/
REVISION=	0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+= X11 Xext Xi gdk glib gmodule gtk m xcb xmms>=4

MASTER_SITES=	${HOMEPAGE}download/

MODULES=	devel/gettext

LIB_DEPENDS=	audio/xmms

MAKE_FLAGS=	CC="${CC}" OPT="${CFLAGS}" DEBUG=""
NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/xmms/General
	${INSTALL_DATA} ${WRKBUILD}/libxf86audio.so ${PREFIX}/lib/xmms/General/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmms-xf86audio
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xmms-xf86audio/

.include <bsd.port.mk>
