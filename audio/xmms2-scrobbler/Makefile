# $OpenBSD: Makefile,v 1.3 2009/06/05 21:31:58 ajacoutot Exp $

COMMENT =		last.fm client for xmms2

DISTNAME =		xmms2-scrobbler-0.3.0
PKGNAME =		${DISTNAME}p0

CATEGORIES =		audio

HOMEPAGE =		http://code-monkey.de/pages/xmms2-scrobbler

MAINTAINER =		Amaury Gauthier <amaury.gauthier@etu.unilim.fr>

# BSD 
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c curl pthread

MASTER_SITES =		ftp://ftp.code-monkey.de/pub/xmms2-scrobbler/

LIB_DEPENDS =		xmmsclient::audio/xmms2

USE_GMAKE =		Yes

NO_REGRESS =		Yes

.include <bsd.port.mk>
