# $OpenBSD: Makefile,v 1.15 2014/01/25 12:39:54 espie Exp $

COMMENT =		mail server storing messages in a database

DISTNAME =		archiveopteryx-3.1.3
REVISION =		10
CATEGORIES =		mail databases

HOMEPAGE =		http://www.archiveopteryx.org/
MAINTAINER =		Landry Breuil <landry@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto m pthread ssl stdc++ z


MASTER_SITES =		${HOMEPAGE}/download/
EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		devel/jam
NO_TEST =		yes

JAMDEBUG =	-d x	# display command-lines
JAMDEBUG +=	-q	# die quickly on build failure
MAKE_ENV +=	CC=${CC} CXX=${CXX}

JAMFLAGS = \
	-sAOXUSER=_aox \
	-sAOXGROUP=_aox \
	-sEXEMODE=755 \
	-sBUILD= \
	-sOPTIM="${CFLAGS}" \
	-sCXXFLAGS="${CXXFLAGS}" \
	-sLDFLAGS="${LDFLAGS}"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Jam{rules,settings}

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} jam ${JAMDEBUG} ${JAMFLAGS}

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} jam ${JAMDEBUG} ${JAMFLAGS} install
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/archiveopteryx
	${INSTALL_DATA} ${FILESDIR}/*.conf ${PREFIX}/share/examples/archiveopteryx

.include <bsd.port.mk>
