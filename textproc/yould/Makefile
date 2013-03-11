# $OpenBSD: Makefile,v 1.8 2013/03/11 11:42:47 espie Exp $

COMMENT=		generator for pronounceable random words

MODPY_EGG_VERSION=	0.3.7
DISTNAME=		yould-${MODPY_EGG_VERSION}
REVISION=		2
CATEGORIES=		textproc

HOMEPAGE=		http://ygingras.net/yould

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://ygingras.net/files/

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yould
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/yould

.include <bsd.port.mk>
