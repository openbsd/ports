# $OpenBSD: Makefile,v 1.1.1.1 2004/01/05 19:17:43 sturm Exp $

COMMENT=	"implementation of the MSN messaging protocol in Python"

DISTNAME=	msnp.py-0.4.0	
PKGNAME=	py-${DISTNAME:S/.py//}
CATEGORIES=	net

HOMEPAGE=	http://msnp.sourceforge.net/

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=msnp/}

MODULES=	python
MODPY_VERSION=	2.3

DOCDIR=		${PREFIX}/share/doc/py-msnp

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/{README,tutorial.html} ${DOCDIR}

.include <bsd.port.mk>
