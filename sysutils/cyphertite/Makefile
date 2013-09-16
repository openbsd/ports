# $OpenBSD: Makefile,v 1.33 2013/09/16 06:23:39 benoit Exp $

COMMENT =		tar-like secure remote deduplicating archiver

DISTNAME =		cyphertite-1.6.4
CATEGORIES =		sysutils archivers security

HOMEPAGE =		https://www.cyphertite.com/
MAINTAINER =		David Hill <dhill@mindcry.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		assl>=6 c clog crypto curl edit event_core expat \
			exude>=2 ncurses pthread shrink>=2 sqlite3 ssl util \
			xmlsd>=3

MASTER_SITES =		https://opensource.conformal.com/snapshots/cyphertite/

LIB_DEPENDS =		archivers/libshrink>=0.5.0	\
			devel/libclog>=0.6.0		\
			devel/libevent2			\
			devel/libexude>=0.7.0		\
			net/curl			\
			security/assl>=1.3.0		\
			textproc/libxmlsd>=0.9.0

.include <bsd.port.mk>
