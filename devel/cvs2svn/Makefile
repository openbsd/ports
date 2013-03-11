# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:02 espie Exp $

COMMENT=		migrate repositories from CVS to Subversion/GIT/BZR

# Beware! Upgrades need a new directory in MASTER_SITES,
# otherwise you probably get the old files, not 404.
MODPY_EGG_VERSION=	2.4.0
DISTNAME=		cvs2svn-${MODPY_EGG_VERSION}
MASTER_SITES=		${HOMEPAGE}files/documents/1462/49237/

CATEGORIES=		devel

HOMEPAGE=		http://cvs2svn.tigris.org/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

RUN_DEPENDS=	devel/subversion,-python \
		${MODPY_RUN_DEPENDS},-bsddb

TEST_DEPENDS=${RUN_DEPENDS}

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
