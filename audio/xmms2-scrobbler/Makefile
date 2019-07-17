# $OpenBSD: Makefile,v 1.10 2019/07/17 14:49:20 danj Exp $

COMMENT =		last.fm client for xmms2

DISTNAME =		xmms2-scrobbler-0.4.0
REVISION =		1

CATEGORIES =		audio

HOMEPAGE =		http://code-monkey.de/pages/xmms2-scrobbler

# BSD 
PERMIT_PACKAGE =	Yes

WANTLIB +=		c curl pthread xmmsclient

MASTER_SITES =		ftp://ftp.code-monkey.de/pub/xmms2-scrobbler/

LIB_DEPENDS =		audio/xmms2

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
