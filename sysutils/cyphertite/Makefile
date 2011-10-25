# $OpenBSD: Makefile,v 1.9 2011/10/25 19:05:27 dhill Exp $

COMMENT =		tar-like secure remote deduplicating archiver

DISTNAME =		cyphertite-0.4.7
CATEGORIES =		sysutils archivers security

HOMEPAGE =		https://www.cyphertite.com/
MAINTAINER =		David Hill <dhill@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		assl>=3 c clog crypto event expat exude>=2 \
			shrink sqlite3 ssl util xmlsd>=1

MASTER_SITES =		https://opensource.conformal.com/snapshots/cyphertite/

LIB_DEPENDS =		archivers/libshrink>=0.2.1	\
			databases/sqlite3		\
			devel/libclog>=0.3.4		\
			devel/libexude>=0.4.0		\
			security/assl>=0.10.2		\
			textproc/libxmlsd>=0.5.0

NO_REGRESS =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cyphertite
	${INSTALL_DATA} ${WRKSRC}/cyphertite/cyphertite.conf \
		${PREFIX}/share/examples/cyphertite/cyphertite.conf.sample

.include <bsd.port.mk>
