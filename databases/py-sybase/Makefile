# $OpenBSD: Makefile,v 1.8 2005/06/10 17:07:43 sturm Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Python interface to the Sybase relational database system"

DISTNAME=	sybase-0.36
PKGNAME=	py-${DISTNAME}p0
CATEGORIES=	databases

HOMEPAGE=	http://www.object-craft.com.au/projects/sybase/
MASTER_SITES=	${HOMEPAGE}download/

# BSD 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python \
		devel/gettext

MODPY_DISTUTILS_BUILD=		build_ext
MODPY_DISTUTILS_BUILDARGS=	-DHAVE_FREETDS=61

LIB_DEPENDS=	ct.1::databases/freetds

MAKE_ENV+=	SYBASE="${LOCALBASE}"
NO_REGRESS=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-sybase

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/README ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/timeout.readme ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.{py,sql} ${EXAMPLESDIR}

.include <bsd.port.mk>
