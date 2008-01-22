# $OpenBSD: Makefile,v 1.2 2008/01/22 12:19:38 espie Exp $

VERSION =		3.94.0
COMMENT =		image effects for kde
DISTNAME =		qimageblitz-${VERSION}
EXTRACT_SUFX =		.tgz
PKGNAME =		${DISTNAME}
WRKDIST =		${WRKDIR}/qimageblitz

MASTER_SITES=	ftp://quatramaran.ens.fr/pub/espie/
SHARED_LIBS +=	qimageblitz         4.0      # .4.0

WANTLIB += ICE SM X11 Xcursor Xext Xi Xinerama Xrandr Xrender
WANTLIB += c fontconfig freetype glib-2.0 gthread-2.0 m png pthread
WANTLIB += stdc++
WANTLIB += QtGui

.include <bsd.port.mk>
