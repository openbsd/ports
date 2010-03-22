# $OpenBSD: Makefile,v 1.1.1.1 2010/03/22 22:30:15 ajacoutot Exp $

COMMENT=	character encoding auto-detection in Python

MODPY_EGG_VERSION= 2.0.1
DISTNAME=	python2-chardet-${MODPY_EGG_VERSION}
PKGNAME=	py-chardet-${MODPY_EGG_VERSION}

EXTRACT_SUFX=	.tgz

CATEGORIES=	textproc

HOMEPAGE=	http://chardet.feedparser.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

MODULES=	lang/python

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-chardet/html
	cp -R ${WRKSRC}/docs/* \
		${PREFIX}/share/doc/py-chardet/html
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/py-chardet

.include <bsd.port.mk>
