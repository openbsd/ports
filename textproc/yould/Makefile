# $OpenBSD: Makefile,v 1.16 2021/05/21 19:50:37 kmos Exp $

COMMENT=		generator for pronounceable random words

MODPY_EGG_VERSION=	0.3.7
DISTNAME=		yould-${MODPY_EGG_VERSION}
REVISION=		6
CATEGORIES=		textproc

# GPLv3
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes

MODULES=		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yould
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/yould

.include <bsd.port.mk>
