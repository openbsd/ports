# $OpenBSD: Makefile,v 1.24 2006/11/13 12:51:15 steven Exp $

COMMENT=	"console tool for openlook"

DISTNAME=	contool-3.3a
CATEGORIES=	sysutils

MASTER_SITES=	ftp://ftp.kfu.com/pub/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	NOFEE
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	NOFEE
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c

LIB_DEPENDS=	xview.>=3,olgx.>=3::x11/xview/lib
BUILD_DEPENDS=	::x11/xview/config

WRKDIST=	${WRKDIR}
CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/help

.include <bsd.port.mk>
