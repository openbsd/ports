# $OpenBSD: Makefile,v 1.14 2000/10/05 16:10:26 ian Exp $

DISTNAME=	contool-3.3a
CATEGORIES=	sysutils
NEED_VERSION=	1.230
MASTER_SITES=	ftp://ftp.kfu.com/pub/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	NOFEE
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	NOFEE
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	xview.3.::x11/xview/lib
BUILD_DEPENDS=	${X11BASE}/lib/X11/config/XView.cf::x11/xview/config

WRKDIST=	${WRKDIR}
USE_IMAKE=	Yes
FAKE=		Yes

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/help

.include <bsd.port.mk>
