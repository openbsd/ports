# $OpenBSD: Makefile,v 1.13 2010/08/30 21:36:15 fgsch Exp $

SHARED_ONLY=	Yes

COMMENT=	Python interface to XMMS

DISTNAME=	pyxmms-1.06
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION =	4
CATEGORIES=	audio

HOMEPAGE=	http://people.via.ecp.fr/~flo/2002/PyXMMS/doc/xmms.html
MASTER_SITES=	http://people.via.ecp.fr/~flo/2002/PyXMMS/dist/

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python

LIB_DEPENDS=	xmms.>=3::audio/xmms

MODPY_DISTUTILS_BUILD=		build_ext
MODPY_DISTUTILS_BUILDARGS=	-I${LOCALBASE}/include \
				-L${LOCALBASE}/lib

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-xmms
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-xmms

.include <bsd.port.mk>
