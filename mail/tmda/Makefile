# $OpenBSD: Makefile,v 1.21 2003/02/04 14:42:59 lebel Exp $

COMMENT=		"reduce the amount of SPAM/UCE (junk-mail)"

VERSION=		0.69
DISTNAME=		tmda-${VERSION}
CATEGORIES=		mail

HOMEPAGE=		http://tmda.net/
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://tmda.net/releases/ \
			http://tmda.net/releases/old/
EXTRACT_SUFX=		.tgz

RUN_DEPENDS+=   	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
BUILD_DEPENDS=  	${RUN_DEPENDS}

PYTHON_VER=     	2.1
PYTHON_LIBDIR=		lib/python${PYTHON_VER}
SUBST_VARS=		PYTHON_VER
NO_REGRESS=		Yes

do-build:
	@cd ${WRKSRC} && ${LOCALBASE}/bin/python${PYTHON_VER} -c \
		'import compileall; compileall.compile_dir(".", force=1)'

do-install:
	@perl -pi -e 's:htdocs:${TRUEPREFIX}/share/doc/tmda:' ${WRKSRC}/INSTALL
	${INSTALL_DATA_DIR} ${PREFIX}/${PYTHON_LIBDIR}/TMDA/pythonlib/email
	${INSTALL_SCRIPT} ${WRKSRC}/TMDA/*.py* ${PREFIX}/${PYTHON_LIBDIR}/TMDA
	${INSTALL_SCRIPT} ${WRKSRC}/TMDA/pythonlib/email/*.py* \
		${PREFIX}/${PYTHON_LIBDIR}/TMDA/pythonlib/email
	${INSTALL_DATA_DIR} ${PREFIX}/share/tmda
	${INSTALL_DATA} ${WRKSRC}/templates/*.txt ${PREFIX}/share/tmda
	${INSTALL_SCRIPT} ${WRKSRC}/bin/tmda-* ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tmda/contrib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tmda
	${INSTALL_DATA} ${WRKSRC}/contrib/sample.config \
		${PREFIX}/share/examples/tmda
.for f in collectaddys printcdb def2html printdbm tmda.el
	${INSTALL_DATA} ${WRKSRC}/contrib/$f ${PREFIX}/share/doc/tmda/contrib
.endfor
	${INSTALL_DATA} ${WRKSRC}/htdocs/*.html ${PREFIX}/share/doc/tmda
.for f in CRYPTO INSTALL README UPGRADE
	${INSTALL_DATA} ${WRKSRC}/$f ${PREFIX}/share/doc/tmda
.endfor

.include <bsd.port.mk>
