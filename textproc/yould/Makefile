# $OpenBSD: Makefile,v 1.14 2019/07/12 20:50:17 sthen Exp $

COMMENT=		generator for pronounceable random words

MODPY_EGG_VERSION=	0.3.7
DISTNAME=		yould-${MODPY_EGG_VERSION}
REVISION=		5
CATEGORIES=		textproc

# GPLv3
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yould
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/yould

.include <bsd.port.mk>
