# $OpenBSD: Makefile,v 1.17 2013/03/10 22:55:05 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	CDDB audio CD track info access in Python

DISTNAME=	CDDB-1.4
PKGNAME=	py-${DISTNAME:L}
REVISION =	7
CATEGORIES=	audio

HOMEPAGE=	http://cddb-py.sourceforge.net/

# GPL 
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB = ${MODPY_WANTLIB}

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cddb-py/}
# avoid possible conflict with the audio/p5-cddb distfile
DIST_SUBDIR=	py-cddb

MODULES=	lang/python

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-cddb
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-cddb

.include <bsd.port.mk>
