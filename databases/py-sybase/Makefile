# $OpenBSD: Makefile,v 1.1.1.1 2003/10/13 17:15:05 sturm Exp $

COMMENT=	"Python interface to the Sybase relational database system"

DISTNAME=	sybase-0.36
PKGNAME=	py-${DISTNAME}
CATEGORIES=	databases

HOMEPAGE=	http://www.object-craft.com.au/projects/sybase/
MASTER_SITES=	${HOMEPAGE}download/

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# BSD 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	python

MODPY_DISTUTILS_BUILD=		build_ext
MODPY_DISTUTILS_BUILDARGS=	-DHAVE_FREETDS=61

LIB_DEPENDS=    tds.2,sybdb.3,ct.1::databases/freetds

MAKE_ENV+=	SYBASE="${LOCALBASE}"

EXAMPLESDIR=	${PREFIX}/share/examples/py-sybase

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/README ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/timeout.readme ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.{py,sql} ${EXAMPLESDIR}

.include <bsd.port.mk>
