# $OpenBSD: Makefile,v 1.16 2021/01/04 13:56:09 sthen Exp $

# https://github.com/mhagger/cvs2svn/issues/9
BROKEN=	needs porting to Python 3, subversion with swig 4.x is 3-only

COMMENT=		migrate repositories from CVS to Subversion/GIT/BZR

MODPY_EGG_VERSION=	2.4.0
REVISION=		1
DISTNAME=		cvs2svn-${MODPY_EGG_VERSION}
MASTER_SITES=		https://spacehopper.org/mirrors/

CATEGORIES=		devel

HOMEPAGE=		https://github.com/mhagger/cvs2svn

# BSD-like
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

RUN_DEPENDS=	devel/subversion,-python \
		${MODPY_RUN_DEPENDS},-bsddb

TEST_FLAGS=	PYTHON=${MODPY_BIN}

TEST_TARGET=	check

DOCFILES=	BUGS CHANGES COPYING HACKING README doc/design-notes.txt
DOCDIR=		${PREFIX}/share/doc/cvs2svn
EXAMPLEDIR =	${PREFIX}/share/examples/cvs2svn

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR} ${DOCDIR}/www ${EXAMPLEDIR}
.for i in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/$i ${DOCDIR}/
.endfor
	${INSTALL_DATA} ${WRKSRC}/www/*html ${DOCDIR}/www/
	${INSTALL_DATA} ${WRKSRC}/cvs2*-example.options ${EXAMPLEDIR}

.include <bsd.port.mk>
