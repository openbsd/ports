# $OpenBSD: Makefile,v 1.13 2012/03/30 22:53:18 ajacoutot Exp $

COMMENT =		tar-like secure remote deduplicating archiver

DISTNAME =		cyphertite-1.1.1
CATEGORIES =		sysutils archivers security

HOMEPAGE =		https://www.cyphertite.com/
MAINTAINER =		David Hill <dhill@mindcry.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		assl>=3 c clog crypto edit event expat exude>=2 \
			ncurses pthread shrink>=1 sqlite3 ssl util xmlsd>=2

MASTER_SITES =		https://opensource.conformal.com/snapshots/cyphertite/

LIB_DEPENDS =		archivers/libshrink>=0.3.0	\
			databases/sqlite3		\
			devel/libclog>=0.4.0		\
			devel/libexude>=0.6.0		\
			security/assl>=0.12.0		\
			textproc/libxmlsd>=0.6.0

NO_REGRESS =		Yes

.include <bsd.port.mk>
