# $OpenBSD: Makefile,v 1.1.1.1 2003/07/28 18:32:16 sturm Exp $

COMMENT=	"CDDB audio CD track info access in Python"

DISTNAME=	CDDB-1.3
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	audio

HOMEPAGE=	http://cddb-py.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cddb-py/}

# avoid possible conflict with the audio/p5-cddb distfile
DIST_SUBDIR=	${PKGNAME}

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	python

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-cddb
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-cddb

.include <bsd.port.mk>
