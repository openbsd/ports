# $OpenBSD: Makefile,v 1.2 2004/01/30 08:39:48 xsa Exp $

COMMENT=	"parser generator in Python"

DISTNAME=	TPG-3.0.0
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	devel

HOMEPAGE=	http://christophe.delord.free.fr/en/tpg/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# LGPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://christophe.delord.free.fr/soft/tpg/

MODULES=	python

NO_REGRESS=	Yes

DOCDIR=		${PREFIX}/share/doc/py-tpg
EXAMPLESDIR=	${PREFIX}/share/examples/py-tpg

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${DOCDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLESDIR}

.include <bsd.port.mk>
