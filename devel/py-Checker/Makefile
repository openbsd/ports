# $OpenBSD: Makefile,v 1.20 2003/07/31 19:11:59 sturm Exp $


COMMENT=	"python codes checker"

VERSION=	0.8.11
DISTNAME=	pychecker-${VERSION}
PKGNAME=	py-Checker-${VERSION}
CATEGORIES=    	devel

HOMEPAGE=	http://pychecker.sourceforge.net/

MAINTAINER=	Shell Hung <shell@openbsd.org>

# BSD License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pychecker/}

MODULES=	python

MODPY_DISTUTILS_INSTALLARGS=	-O1

NO_REGRESS=	Yes

DOC_DIR=	${PREFIX}/share/doc/py-Checker/
DOC_FILE=	CHANGELOG KNOWN_BUGS TODO MAINTAINERS README

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
.for i in ${DOC_FILE}
	${INSTALL_DATA} ${WRKSRC}/$i ${DOC_DIR}
.endfor

.include <bsd.port.mk>
