# $OpenBSD: Makefile,v 1.7 2001/09/28 06:02:13 pvalchev Exp $

COMMENT=	"Type 1 rasterizer library for UNIX/X11"

VERSION=	1.2
DISTNAME=	t1lib-${VERSION}
CATEGORIES=	devel textproc
NEED_VERSION=	1.435
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= libs/graphics

HOMEPAGE=	http://www.neuroinformatik.ruhr-uni-bochum.de/ini/PEOPLE/rmz/t1lib/t1lib.html

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/ac-tools

ALL_TARGET=	without_doc

WRKDIST=	${WRKDIR}/T1Lib-${VERSION}

.include <bsd.port.mk>
