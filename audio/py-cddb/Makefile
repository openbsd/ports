# $OpenBSD: Makefile,v 1.3 2004/01/29 17:13:37 sturm Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"CDDB audio CD track info access in Python"

DISTNAME=	CDDB-1.4
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	audio

HOMEPAGE=	http://cddb-py.sourceforge.net/

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cddb-py/}
# avoid possible conflict with the audio/p5-cddb distfile
DIST_SUBDIR=	${PKGNAME}

MODULES=	python

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-cddb
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-cddb

.include <bsd.port.mk>
