# $OpenBSD: Makefile,v 1.3 2001/03/12 01:41:11 brad Exp $

VERSION=	1.1.0
DISTNAME=	t1lib-${VERSION}
CATEGORIES=	devel textproc
NEED_VERSION=	1.336
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= libs/graphics

HOMEPAGE=	http://www.neuroinformatik.ruhr-uni-bochum.de/ini/PEOPLE/rmz/t1lib/t1lib.html

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

ALL_TARGET=	without_doc

WRKDIST=	${WRKDIR}/T1-${VERSION}

.include <bsd.port.mk>
