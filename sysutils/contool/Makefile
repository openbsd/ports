# $OpenBSD: Makefile,v 1.33 2010/11/20 17:22:40 espie Exp $

COMMENT=	console tool for openlook

DISTNAME=	contool-3.3a
REVISION =	3
CATEGORIES=	sysutils

MASTER_SITES=	ftp://ftp.kfu.com/pub/

PERMIT_PACKAGE_CDROM=	NOFEE
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	NOFEE
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c pthread-stubs xcb xview>=3 olgx>=3
LIB_DEPENDS=	x11/xview/lib
BUILD_DEPENDS=	x11/xview/config

WRKDIST=	${WRKDIR}
CONFIGURE_STYLE=imake
USE_GROFF =	Yes
NO_REGRESS=	Yes

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/help

.include <bsd.port.mk>
