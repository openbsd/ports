# $OpenBSD: Makefile,v 1.18 2013/03/11 01:30:26 espie Exp $

COMMENT=	Python Unicode codecs for Chinese charsets

VERSION=	1.2.0
DISTNAME=	ChineseCodecs${VERSION}
PKGNAME=	py-zhCodecs-${VERSION}
REVISION=	5
CATEGORIES=    	chinese devel

HOMEPAGE=	http://sourceforge.net/projects/python-codecs/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

MODPY_DISTUTILS_INSTALLARGS=	-O1

WRKSRC=	${WRKDIST}/Python

NO_TEST=	Yes

post-extract:
	@chmod 711 ${WRKSRC}/chinesetw

.include <bsd.port.mk>
