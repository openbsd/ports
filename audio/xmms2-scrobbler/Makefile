# $OpenBSD: Makefile,v 1.5 2010/10/18 22:43:10 sthen Exp $

COMMENT =		last.fm client for xmms2

DISTNAME =		xmms2-scrobbler-0.4.0

CATEGORIES =		audio

HOMEPAGE =		http://code-monkey.de/pages/xmms2-scrobbler

MAINTAINER =		Amaury Gauthier <amaury.gauthier@etu.unilim.fr>

# BSD 
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c curl pthread xmmsclient

MASTER_SITES =		ftp://ftp.code-monkey.de/pub/xmms2-scrobbler/

LIB_DEPENDS =		::audio/xmms2

USE_GMAKE =		Yes

NO_REGRESS =		Yes

.include <bsd.port.mk>
