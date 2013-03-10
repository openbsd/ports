# $OpenBSD: Makefile,v 1.19 2013/03/10 22:55:05 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Python interface to XMMS

DISTNAME=	pyxmms-1.06
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION =	7
CATEGORIES=	audio

HOMEPAGE=	http://people.via.ecp.fr/~flo/2002/PyXMMS/doc/xmms.html
MASTER_SITES=	http://people.via.ecp.fr/~flo/2002/PyXMMS/dist/

# GPL 
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

WANTLIB += xmms ${MODPY_WANTLIB}
LIB_DEPENDS=	audio/xmms

MODPY_DISTUTILS_BUILD=		build_ext
MODPY_DISTUTILS_BUILDARGS=	-I${LOCALBASE}/include \
				-L${LOCALBASE}/lib

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-xmms
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-xmms

.include <bsd.port.mk>
