# $OpenBSD: Makefile,v 1.7 2007/10/08 08:22:38 steven Exp $

COMMENT=	read and manipulate ID3 tags on MP3 files with Python

VERSION=	1.2
DISTNAME=	id3-py_${VERSION}
PKGNAME=	py-id3-${VERSION}p1
CATEGORIES=	audio

HOMEPAGE=	http://id3-py.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=id3-py/}

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python

NO_REGRESS=	Yes

WRKSRC=		${WRKDIR}/${DISTNAME:S/py_/py-/}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-id3
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-id3

.include <bsd.port.mk>
