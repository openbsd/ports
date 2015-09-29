# $OpenBSD: Makefile,v 1.11 2015/09/29 10:52:53 sthen Exp $

COMMENT=		generator for pronounceable random words

MODPY_EGG_VERSION=	0.3.7
DISTNAME=		yould-${MODPY_EGG_VERSION}
REVISION=		4
CATEGORIES=		textproc

HOMEPAGE=		https://pypi.python.org/pypi/yould/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yould
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/yould

.include <bsd.port.mk>
