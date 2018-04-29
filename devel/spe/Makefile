# $OpenBSD: Makefile,v 1.16 2018/04/29 10:13:57 jasper Exp $

COMMENT=	SPE -- Stani's Python Editor

V=		0.8.4
DISTNAME=	spe-$V.h-wx2.6.1.0
PKGNAME=	spe-$Vh
REVISION=	7
CATEGORIES=	devel

HOMEPAGE=	http://pythonide.stani.be/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=python.berlios/}

WRKDIST=	${WRKDIR}/spe-$V.h

MODULES=	lang/python

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/py-wxPython \
		security/py-cryptodome \
		devel/py-Checker

NO_TEST=	Yes

.include <bsd.port.mk>
