# $OpenBSD: Makefile,v 1.18 2021/02/23 19:39:14 sthen Exp $

COMMENT=		migrate repositories from CVS to Subversion/GIT/BZR

# py3: https://github.com/mhagger/cvs2svn/issues/9
MODPY_EGG_VERSION=	2.4.0
REVISION=		2
DISTNAME=		cvs2svn-${MODPY_EGG_VERSION}
MASTER_SITES=		https://spacehopper.org/mirrors/

CATEGORIES=		devel

HOMEPAGE=		https://github.com/mhagger/cvs2svn

# BSD-like
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

RUN_DEPENDS=	${MODPY_RUN_DEPENDS},-bsddb

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
