# $OpenBSD: Makefile,v 1.7 2009/08/10 06:29:53 kili Exp $

SHARED_ONLY=	Yes

COMMENT=	XF86Audio multimedia-key support for XMMS
DISTNAME=	xmms-xf86audio-0.4.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio
HOMEPAGE=	http://www.devin.com/xmms-xf86audio/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/

LIB_DEPENDS=	xmms.>=4::audio/xmms
WANTLIB=	X11 Xext Xi m gdk glib gmodule gtk iconv intl pthread-stubs xcb

MAKE_FLAGS=	CC="${CC}" OPT="${CFLAGS}" DEBUG=""
NO_REGRESS=	Yes
USE_X11=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/xmms/General
	${INSTALL_DATA} ${WRKBUILD}/libxf86audio.so ${PREFIX}/lib/xmms/General/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmms-xf86audio
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xmms-xf86audio/

.include <bsd.port.mk>
