# $OpenBSD: Makefile,v 1.5 2010/08/31 08:22:05 jasper Exp $

VERSION =		0.0.4
COMMENT =		image effects for kde
DISTNAME =		qimageblitz-${VERSION}
EXTRACT_SUFX =		.tar.bz2

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qimageblitz/}
SHARED_LIBS +=	qimageblitz         0.0      # .4.0

WANTLIB += c lib/qt4/QtGui m pthread stdc++

.include <bsd.port.mk>
