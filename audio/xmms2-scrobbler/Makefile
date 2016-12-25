# $OpenBSD: Makefile,v 1.8 2016/12/25 15:11:47 zhuk Exp $

COMMENT =		last.fm client for xmms2

DISTNAME =		xmms2-scrobbler-0.4.0
REVISION =		0

CATEGORIES =		audio

HOMEPAGE =		http://code-monkey.de/pages/xmms2-scrobbler

MAINTAINER =		Amaury Gauthier <amaury.gauthier@etu.unilim.fr>

# BSD 
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c curl pthread xmmsclient

MASTER_SITES =		ftp://ftp.code-monkey.de/pub/xmms2-scrobbler/

LIB_DEPENDS =		audio/xmms2

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
