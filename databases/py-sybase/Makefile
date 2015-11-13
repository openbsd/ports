# $OpenBSD: Makefile,v 1.23 2015/11/13 09:04:37 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Python interface to the Sybase relational database system

DISTNAME=	sybase-0.37
PKGNAME=	py-${DISTNAME}
CATEGORIES=	databases

HOMEPAGE=	http://www.object-craft.com.au/projects/sybase/
MASTER_SITES=	${HOMEPAGE}download/

# BSD 
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += ct pthread

MODULES=	lang/python \
		devel/gettext

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
