# $OpenBSD: Makefile,v 1.26 2013/03/04 08:44:11 benoit Exp $

COMMENT =		tar-like secure remote deduplicating archiver

DISTNAME =		cyphertite-1.5.1
CATEGORIES =		sysutils archivers security

HOMEPAGE =		https://www.cyphertite.com/
MAINTAINER =		David Hill <dhill@mindcry.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		assl>=5 c clog crypto curl edit event_core expat \
			exude>=2 ncurses pthread shrink>=2 sqlite3 ssl util \
			xmlsd>=3

MASTER_SITES =		https://opensource.conformal.com/snapshots/cyphertite/

LIB_DEPENDS =		archivers/libshrink>=0.5.0	\
			devel/libclog>=0.6.0		\
			devel/libevent2			\
			devel/libexude>=0.7.0		\
			net/curl			\
			security/assl>=1.1.0		\
			textproc/libxmlsd>=0.9.0

.include <bsd.port.mk>
