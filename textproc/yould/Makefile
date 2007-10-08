# $OpenBSD: Makefile,v 1.2 2007/10/08 08:22:43 steven Exp $

COMMENT=		generator for pronounceable random words

DISTNAME=		yould-0.3.3
PKGNAME=		${DISTNAME}p0
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
