# $OpenBSD: Makefile,v 1.3 2004/01/30 08:39:49 xsa Exp $

COMMENT=	"implementation of the MSN messaging protocol in Python"

DISTNAME=	msnp.py-0.4.1
PKGNAME=	py-${DISTNAME:S/.py//}
CATEGORIES=	net

HOMEPAGE=	http://msnp.sourceforge.net/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=msnp/}

MODULES=	python

DOCDIR=		${PREFIX}/share/doc/py-msnp

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/{README,tutorial.html} ${DOCDIR}

.include <bsd.port.mk>
