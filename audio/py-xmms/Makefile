# $OpenBSD: Makefile,v 1.16 2011/06/08 17:31:33 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	Python interface to XMMS

DISTNAME=	pyxmms-1.06
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION =	5
CATEGORIES=	audio

HOMEPAGE=	http://people.via.ecp.fr/~flo/2002/PyXMMS/doc/xmms.html
MASTER_SITES=	http://people.via.ecp.fr/~flo/2002/PyXMMS/dist/

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python

WANTLIB += xmms
LIB_DEPENDS=	audio/xmms

MODPY_DISTUTILS_BUILD=		build_ext
MODPY_DISTUTILS_BUILDARGS=	-I${LOCALBASE}/include \
				-L${LOCALBASE}/lib

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-xmms
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-xmms

.include <bsd.port.mk>
