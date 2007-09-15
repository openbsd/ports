# $OpenBSD: Makefile,v 1.7 2007/09/15 21:36:45 merdely Exp $

COMMENT=	LaTeX class to produce high quality slides

DISTNAME=	prosper-1.00.4
PKGNAME=	${DISTNAME}p2
CATEGORIES=	print

# BSD style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://prosper.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=prosper/}

RUN_DEPENDS=	:teTeX_base-*:print/teTeX/base

WRKDIST=	${WRKDIR}/prosper
CLS_DIR=	${PREFIX}/share/texmf-local/tex/latex/prosper
DOC_DIR=	${PREFIX}/share/texmf-local/doc/latex/prosper
EXAMPLES_DIR=	${PREFIX}/share/examples/prosper

NO_REGRESS=	Yes
NO_BUILD=	Yes
PKG_ARCH=	*

do-install:
		${INSTALL_DATA_DIR} ${CLS_DIR} ${CLS_DIR}/img ${DOC_DIR}
		${INSTALL_DATA} ${WRKDIST}/{PPR*.sty,prosper.cls,contrib/PPR*.sty} ${CLS_DIR}
		${INSTALL_DATA} ${WRKDIST}/img/*.ps ${CLS_DIR}/img
		${INSTALL_DATA} ${WRKDIST}/contrib/img/*.ps ${CLS_DIR}/img
		${INSTALL_DATA} ${WRKDIST}/doc/prosper-doc.pdf ${DOC_DIR}
		${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
		${INSTALL_DATA} ${WRKDIST}/doc/{doc-examples/*.tex,prosper-tour.{tex,pdf}} ${EXAMPLES_DIR}

.include <bsd.port.mk>
