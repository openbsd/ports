# $OpenBSD: Makefile,v 1.19 2002/12/06 17:48:14 naddy Exp $

COMMENT=		"reduce the amount of SPAM/UCE (junk-mail)"

VERSION=		0.65
DISTNAME=		tmda-${VERSION}
CATEGORIES=		mail

HOMEPAGE=		http://tmda.sourceforge.net/

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://tmda.net/releases/ \
			http://tmda.net/releases/old/
EXTRACT_SUFX=		.tgz

RUN_DEPENDS=   :python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
BUILD_DEPENDS=  ${RUN_DEPENDS}

PYTHON_VER=     2.1
PYTHON_LIBDIR=	lib/python${PYTHON_VER}
SUBST_VARS=	PYTHON_VER
NO_REGRESS=	Yes

post-patch:
	@perl -pi -e 's:%%PREFIX%%:${PREFIX}:' ${WRKSRC}/INSTALL
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
	${INSTALL_DATA} ${WRKSRC}/contrib/sample.config ${PREFIX}/share/examples/tmda
	${INSTALL_DATA} ${WRKSRC}/htdocs/*.html ${PREFIX}/share/doc/tmda
	${INSTALL_DATA} ${WRKSRC}/INSTALL ${PREFIX}/share/doc/tmda
	${INSTALL_DATA} ${WRKSRC}/UPGRADE ${PREFIX}/share/doc/tmda

.include <bsd.port.mk>
