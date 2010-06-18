# $OpenBSD: Makefile,v 1.3 2010/06/18 09:33:45 espie Exp $

VERSION =		0.0.4
COMMENT =		image effects for kde
DISTNAME =		qimageblitz-${VERSION}
EXTRACT_SUFX =		.tar.bz2
PKGNAME =		${DISTNAME}

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qimageblitz/}
SHARED_LIBS +=	qimageblitz         0.0      # .4.0

WANTLIB +=	QtGui c m pthread stdc++

.include <bsd.port.mk>
