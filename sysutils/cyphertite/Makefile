# $OpenBSD: Makefile,v 1.2 2011/06/09 05:34:05 dhill Exp $

COMMENT =		tar-like secure remote deduplicating archiver

DISTNAME =		cyphertite-0.1.3
CATEGORIES =		sysutils archivers security

HOMEPAGE =		https://www.cyphertite.com/
MAINTAINER =		David Hill <dhill@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		assl>=3 c clog crypto event expat exude \
			shrink sqlite3 ssl util xmlsd

MASTER_SITES =		http://opensource.conformal.com/snapshots/cyphertite/
EXTRACT_SUFX =		.tgz

LIB_DEPENDS =		archivers/libshrink	\
			databases/sqlite3	\
			devel/libclog		\
			devel/libexude		\
			security/assl>=0.9.6	\
			textproc/libxmlsd

NO_REGRESS =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cyphertite
	${INSTALL_DATA} ${WRKSRC}/cyphertite/cyphertite.conf \
		${PREFIX}/share/examples/cyphertite/cyphertite.conf.sample

.include <bsd.port.mk>
