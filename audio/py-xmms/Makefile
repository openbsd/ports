# $OpenBSD: Makefile,v 1.3 2004/01/29 17:13:37 sturm Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Python interface to XMMS"

DISTNAME=	pyxmms-1.06
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	audio

HOMEPAGE=	http://www.via.ecp.fr/~flo/index.en.html\#PyXMMS_and_PyXMMS-remote
MASTER_SITES=	http://www.via.ecp.fr/~flo/2002/PyXMMS/dist/

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	python

LIB_DEPENDS=	xmms.3::audio/xmms

MODPY_DISTUTILS_BUILD=		build_ext
MODPY_DISTUTILS_BUILDARGS=	-I${LOCALBASE}/include \
				-L${LOCALBASE}/lib

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-xmms
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-xmms

.include <bsd.port.mk>
