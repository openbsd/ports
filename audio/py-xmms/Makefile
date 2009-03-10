# $OpenBSD: Makefile,v 1.11 2009/03/10 22:21:49 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Python interface to XMMS

DISTNAME=	pyxmms-1.06
PKGNAME=	${DISTNAME:S/py/py-/}p2
CATEGORIES=	audio

HOMEPAGE=	http://www.via.ecp.fr/~flo/index.en.html\#PyXMMS_and_PyXMMS-remote
MASTER_SITES=	http://www.via.ecp.fr/~flo/2002/PyXMMS/dist/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

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
