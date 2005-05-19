# $OpenBSD: Makefile,v 1.29 2005/05/19 00:02:28 alek Exp $

COMMENT=		"reduce the amount of SPAM/UCE (junk-mail)"

VERSION=		1.0.3
DISTNAME=		tmda-${VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		mail

HOMEPAGE=		http://tmda.net/
MAINTAINER=		Dave Steinberg <dave@redterror.net>

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://tmda.net/releases/stable/
EXTRACT_SUFX=		.tgz

PYTHON_VER=     	2.3

RUN_DEPENDS=		:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
BUILD_DEPENDS=		${RUN_DEPENDS}

PYTHON_LIBDIR=		lib/python${PYTHON_VER}/site-packages
SUBST_VARS=		PYTHON_VER
NO_REGRESS=		Yes

CONTRIB_FILES=		collectaddys printcdb sample.config sendit.sh \
			def2html printdbm tmda.el vadduser-tmda

do-build:
	@cd ${WRKSRC} && ${LOCALBASE}/bin/python${PYTHON_VER} ./compileall

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
	${INSTALL_DATA} ${WRKSRC}/htdocs/*.html ${PREFIX}/share/doc/tmda
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tmda/img
	${INSTALL_DATA} ${WRKSRC}/htdocs/img/*.png ${PREFIX}/share/doc/tmda/img
.for f in ${CONTRIB_FILES}
	${INSTALL_DATA} ${WRKSRC}/contrib/$f ${PREFIX}/share/doc/tmda/contrib
.endfor
.for f in CRYPTO INSTALL README UPGRADE
	${INSTALL_DATA} ${WRKSRC}/$f ${PREFIX}/share/doc/tmda
.endfor

.include <bsd.port.mk>
