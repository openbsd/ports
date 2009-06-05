# $OpenBSD: Makefile,v 1.1.1.1 2009/06/05 09:28:24 pea Exp $

COMMENT =		last.fm client for xmms2

DISTNAME =		xmms2-scrobbler-0.3.0

CATEGORIES =		audio

HOMEPAGE =		http://code-monkey.de/pages/xmms2-scrobbler

MAINTAINER =		Amaury Gauthier <amaury.gauthier@etu.unilim.fr>

# BSD 
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c pthread curl

MASTER_SITES =		ftp://ftp.code-monkey.de/pub/xmms2-scrobbler/

LIB_DEPENDS =		xmmsclient.=0::audio/xmms2

USE_GMAKE =		Yes

NO_REGRESS =		Yes

.include <bsd.port.mk>
