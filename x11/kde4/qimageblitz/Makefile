# $OpenBSD: Makefile,v 1.1 2008/01/21 21:47:56 espie Exp $

VERSION =		3.94.0
COMMENT =		image effects for kde
DISTNAME =		qimageblitz-${VERSION}
EXTRACT_SUFX =		.tgz
PKGNAME =		${DISTNAME}
WRKDIST =		${WRKDIR}/qimageblitz

SHARED_LIBS +=	qimageblitz         4.0      # .4.0

WANTLIB += ICE SM X11 Xcursor Xext Xi Xinerama Xrandr Xrender
WANTLIB += c fontconfig freetype glib-2.0 gthread-2.0 m png pthread
WANTLIB += stdc++
WANTLIB += QtGui

.include <bsd.port.mk>
