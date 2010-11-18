# $OpenBSD: Makefile,v 1.11 2010/11/18 12:03:28 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	XF86Audio multimedia-key support for XMMS
DISTNAME=	xmms-xf86audio-0.4.3
REVISION=	2
CATEGORIES=	audio
HOMEPAGE=	http://www.devin.com/xmms-xf86audio/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/

MODULES +=	devel/gettext

LIB_DEPENDS=	audio/xmms
WANTLIB=	X11 Xext Xi m gdk glib gmodule gtk xmms>=4

MAKE_FLAGS=	CC="${CC}" OPT="${CFLAGS}" DEBUG=""
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/xmms/General
	${INSTALL_DATA} ${WRKBUILD}/libxf86audio.so ${PREFIX}/lib/xmms/General/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmms-xf86audio
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xmms-xf86audio/

.include <bsd.port.mk>
