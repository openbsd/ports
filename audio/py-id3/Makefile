# $OpenBSD: Makefile,v 1.13 2013/03/10 22:55:05 espie Exp $

COMMENT=	read and manipulate ID3 tags on MP3 files with Python

VERSION=	1.2
DISTNAME=	id3-py_${VERSION}
PKGNAME=	py-id3-${VERSION}
REVISION =	6
CATEGORIES=	audio

HOMEPAGE=	http://id3-py.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=id3-py/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

NO_TEST=	Yes

WRKSRC=		${WRKDIR}/${DISTNAME:S/py_/py-/}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-id3
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-id3

.include <bsd.port.mk>
