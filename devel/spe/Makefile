# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:31 espie Exp $

COMMENT=	SPE -- Stani's Python Editor

V=		0.8.4
DISTNAME=	spe-$V.h-wx2.6.1.0
PKGNAME=	spe-$Vh
REVISION=	5
CATEGORIES=	devel

HOMEPAGE=	http://pythonide.stani.be/

MAINTAINER=	Joerg Zinke <mail@umaxx.net>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_BERLIOS:=python/}

WRKDIST=	${WRKDIR}/spe-$V.h

MODULES=	lang/python

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/py-wxPython \
		security/py-crypto \
		devel/py-Checker

NO_TEST=	Yes

.include <bsd.port.mk>
