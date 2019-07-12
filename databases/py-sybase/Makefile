# $OpenBSD: Makefile,v 1.26 2019/07/12 20:44:01 sthen Exp $

COMMENT=	Python interface to the Sybase relational database system

DISTNAME=	sybase-0.37
PKGNAME=	py-${DISTNAME}
CATEGORIES=	databases
REVISION=	0

HOMEPAGE=	http://www.object-craft.com.au/projects/sybase/
MASTER_SITES=	${HOMEPAGE}download/

# BSD 
PERMIT_PACKAGE=	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += ct iconv intl pthread

MODULES=	lang/python

MODPY_DISTUTILS_BUILD=		build_ext
MODPY_DISTUTILS_BUILDARGS=	-D HAVE_FREETDS=61

LIB_DEPENDS =	databases/freetds

MAKE_ENV=	SYBASE="${LOCALBASE}"

NO_TEST=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-sybase

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/README ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/timeout.readme ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.{py,sql} ${EXAMPLESDIR}

.include <bsd.port.mk>
