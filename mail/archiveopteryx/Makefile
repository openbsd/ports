# $OpenBSD: Makefile,v 1.24 2019/07/12 20:47:24 sthen Exp $

COMMENT =		mail server storing messages in a database

DISTNAME =		archiveopteryx-3.2.0
CATEGORIES =		mail databases
REVISION =		3

HOMEPAGE =		http://www.archiveopteryx.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto m pthread ssl ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

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
