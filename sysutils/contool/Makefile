# $OpenBSD: Makefile,v 1.20 2002/03/21 21:25:52 espie Exp $

COMMENT=	"console tool for openlook"

DISTNAME=	contool-3.3a
CATEGORIES=	sysutils
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.kfu.com/pub/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	NOFEE
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	NOFEE
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	xview.3,olgx.3::x11/xview/lib
BUILD_DEPENDS=	::x11/xview/config

WRKDIST=	${WRKDIR}
CONFIGURE_STYLE=imake

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/help

.include <bsd.port.mk>
