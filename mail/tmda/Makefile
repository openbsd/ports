# $OpenBSD: Makefile,v 1.8 2002/04/07 22:30:23 matt Exp $

COMMENT=		"reduce the amount of SPAM/UCE (junk-mail)"

VERSION=		0.48
DISTNAME=		tmda-${VERSION}
CATEGORIES=		mail
NEED_VERSION=   	1.503
HOMEPAGE=		http://tmda.sourceforge.net/

MAINTAINER=		David Lebel <lebel@openbsd.org>

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://software.libertine.org/tmda/releases/ \
			http://software.libertine.org/tmda/releases/old/
EXTRACT_SUFX=		.tgz

RUN_DEPENDS+=   :python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
BUILD_DEPENDS=  ${RUN_DEPENDS}

PYTHON_VER=     2.1
PYTHON_LIBDIR=	lib/python${PYTHON_VER}
SUBST_VARS=	PYTHON_VER

do-build:
	@cd ${WRKSRC} && ${LOCALBASE}/bin/python${PYTHON_VER} -c \
		'import compileall; compileall.compile_dir(".", force=1)'

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${PYTHON_LIBDIR}/TMDA
	${INSTALL_SCRIPT} ${WRKSRC}/TMDA/*.py* ${PREFIX}/${PYTHON_LIBDIR}/TMDA
	${INSTALL_DATA_DIR} ${PREFIX}/share/tmda
	${INSTALL_DATA} ${WRKSRC}/templates/*.txt ${PREFIX}/share/tmda
	${INSTALL_SCRIPT} ${WRKSRC}/bin/tmda-* ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tmda
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tmda
	${INSTALL_DATA} ${WRKSRC}/contrib/sample.tmdarc ${PREFIX}/share/examples/tmda
	${INSTALL_DATA} ${WRKSRC}/htdocs/*.html ${PREFIX}/share/doc/tmda

.include <bsd.port.mk>
