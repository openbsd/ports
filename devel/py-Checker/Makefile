# $OpenBSD: Makefile,v 1.25 2006/06/03 09:37:09 alek Exp $

COMMENT=	"Python codes checker"

VERSION=	0.8.13
DISTNAME=	pychecker-${VERSION}
PKGNAME=	py-Checker-${VERSION}p0
CATEGORIES=    	devel

HOMEPAGE=	http://pychecker.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pychecker/}

MODULES=	lang/python

MODPY_DISTUTILS_INSTALLARGS=	-O1

DOC_DIR=	${PREFIX}/share/doc/py-Checker/
DOC_FILE=	CHANGELOG KNOWN_BUGS TODO MAINTAINERS README
EXAMPLESDIR=	${PREFIX}/share/examples/py-Checker/

post-build:
	@perl -pi -e 's,%%PYTHON%%,${LOCALBASE}/bin/python${MODPY_VERSION},g' \
		${WRKSRC}/test_check.sh

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
.for i in ${DOC_FILE}
	${INSTALL_DATA} ${WRKSRC}/$i ${DOC_DIR}
.endfor
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/pycheckrc ${EXAMPLESDIR}

do-regress:
	@cd ${WRKSRC} && sh ./test_check.sh

.include <bsd.port.mk>
