# $OpenBSD: Makefile,v 1.1.1.1 2000/08/31 06:54:06 brad Exp $

DISTNAME=	t1lib-1.0.1
CATEGORIES=	devel textproc
NEED_VERSION=	1.322
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= libs/graphics

HOMEPAGE=	http://www.neuroinformatik.ruhr-uni-bochum.de/ini/PEOPLE/rmz/t1lib/t1lib.html

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

ALL_TARGET=	without_doc

WRKDIST=	${WRKDIR}/T1-1.0.1

.include <bsd.port.mk>
