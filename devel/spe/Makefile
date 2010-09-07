# $OpenBSD: Makefile,v 1.9 2010/09/07 16:52:50 sebastia Exp $

COMMENT=	SPE -- Stani's Python Editor

V=		0.8.4
DISTNAME=	spe-$V.h-wx2.6.1.0
PKGNAME=	spe-$Vh
REVISION=	3
CATEGORIES=	devel

HOMEPAGE=	http://pythonide.stani.be/

MAINTAINER=	Joerg Zinke <mail@umaxx.net>

# GPLv3
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_BERLIOS:=python/}

WRKDIST=	${WRKDIR}/spe-$V.h

MODULES=	lang/python

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils \
		:py-wxPython-*:x11/py-wxPython \
		:py-crypto-*:security/py-crypto \
		:py-Checker-*:devel/py-Checker

NO_REGRESS=	Yes

.include <bsd.port.mk>
