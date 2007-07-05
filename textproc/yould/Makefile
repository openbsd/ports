# $OpenBSD: Makefile,v 1.1.1.1 2007/07/05 09:54:04 jasper Exp $

COMMENT=		generator for pronounceable random words

DISTNAME=		yould-0.3.3
CATEGORIES=		textproc

HOMEPAGE=		http://ygingras.net/yould

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://ygingras.net/files/

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yould
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/yould

.include <bsd.port.mk>
