# $OpenBSD: Makefile,v 1.15 2000/10/22 15:43:29 espie Exp $

DISTNAME=	contool-3.3a
CATEGORIES=	sysutils
NEED_VERSION=	1.305
MASTER_SITES=	ftp://ftp.kfu.com/pub/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	NOFEE
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	NOFEE
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	xview.3.::x11/xview/lib
BUILD_DEPENDS=	${X11BASE}/lib/X11/config/XView.cf::x11/xview/config

WRKDIST=	${WRKDIR}
CONFIGURE_STYLE=imake

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/help

.include <bsd.port.mk>
