# $OpenBSD: Makefile,v 1.5 2011/07/27 19:54:26 dhill Exp $

COMMENT =		tar-like secure remote deduplicating archiver

DISTNAME =		cyphertite-0.3.0
CATEGORIES =		sysutils archivers security

HOMEPAGE =		https://www.cyphertite.com/
MAINTAINER =		David Hill <dhill@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		assl>=3 c clog crypto event expat exude>=1 \
			shrink sqlite3 ssl util xmlsd

MASTER_SITES =		http://opensource.conformal.com/snapshots/cyphertite/

LIB_DEPENDS =		archivers/libshrink>=0.2.1	\
			databases/sqlite3		\
			devel/libclog>=0.3.4		\
			devel/libexude>=0.3.0		\
			security/assl>=0.9.6		\
			textproc/libxmlsd>=0.3.1

NO_REGRESS =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cyphertite
	${INSTALL_DATA} ${WRKSRC}/cyphertite/cyphertite.conf \
		${PREFIX}/share/examples/cyphertite/cyphertite.conf.sample

.include <bsd.port.mk>
