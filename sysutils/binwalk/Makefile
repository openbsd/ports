# $OpenBSD: Makefile,v 1.6 2017/07/05 10:22:06 sthen Exp $

COMMENT=	tool for reverse-engineering and analysing firmware blobs

MODPY_EGG_VERSION = 1.2.2_1
REVISION=	3
DISTNAME=	binwalk-1.2.2-1
PKGNAME=	binwalk-1.2.2.1

CATEGORIES=	sysutils

HOMEPAGE=	http://binwalk.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://binwalk.googlecode.com/files/

MODULES=	lang/python
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/py-libmagic \
		graphics/py-matplotlib

NO_TEST=	Yes

WRKSRC=		${WRKDIST}/src

pre-configure:
	rm ${WRKSRC}/magic/*.orig # don't include pre-patched files in the generated amalgamation

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/binwalk
	${INSTALL_DATA} ${WRKDIST}/docs/* ${PREFIX}/share/doc/binwalk/

.include <bsd.port.mk>
