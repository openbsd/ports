# $OpenBSD: Makefile,v 1.12 2000/04/03 01:38:25 espie Exp $

DISTNAME=	contool-3.3a
CATEGORIES=	sysutils
NEED_VERSION=	1.230
MASTER_SITES=	ftp://ftp.kfu.com/pub/

MAINTAINER=		ian@openbsd.org

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	xview.3.::x11/xview/lib
BUILD_DEPENDS=	${X11BASE}/lib/X11/config/XView.cf::x11/xview/config

WRKDIST=	${WRKDIR}
USE_IMAKE=	Yes
FAKE=		Yes
FAKE_FLAGS=	BINDIR=${PREFIX}/bin MANPATH=${PREFIX}/man
PREFIX=		${X11BASE}

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/help

.include <bsd.port.mk>
