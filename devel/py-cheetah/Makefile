# $OpenBSD: Makefile,v 1.2 2004/08/03 14:27:33 xsa Exp $

COMMENT=	"Python-powered template engine and code generator"

DISTNAME=	Cheetah-0.9.15
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	devel textproc

HOMEPAGE=	http://www.cheetahtemplate.org/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# BSD-like 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cheetahtemplate/}

MODULES=	lang/python

NO_REGRESS=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-cheetah

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/webware_examples/cheetahSite/* \
		${EXAMPLESDIR}

.include <bsd.port.mk>
