COMMENT=	migrate repositories from CVS to Subversion/GIT/BZR

# py3: https://github.com/mhagger/cvs2svn/issues/9
MODPY_DISTV=	2.5.0
DISTNAME=	cvs2svn-${MODPY_DISTV}
SITES=		https://github.com/mhagger/cvs2svn/releases/download/${MODPY_DISTV}/

CATEGORIES=	devel

HOMEPAGE=	https://github.com/mhagger/cvs2svn

# BSD-like
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_2}

RUN_DEPENDS=	${MODPY_RUN_DEPENDS},-bsddb

TEST_FLAGS=	PYTHON=${MODPY_BIN}

TEST_TARGET=	check

DOCFILES=	BUGS CHANGES COPYING HACKING README doc/design-notes.txt
DOCDIR=		${PREFIX}/share/doc/cvs2svn
EXAMPLEDIR=	${PREFIX}/share/examples/cvs2svn

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/www ${EXAMPLEDIR}
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCFILES} ${DOCDIR}/
	${INSTALL_DATA} ${WRKSRC}/www/*html ${DOCDIR}/www/
	${INSTALL_DATA} ${WRKSRC}/cvs2*-example.options ${EXAMPLEDIR}

.include <bsd.port.mk>
