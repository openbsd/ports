# $OpenBSD: Makefile,v 1.1.1.1 2004/01/12 17:58:47 sturm Exp $

COMMENT=	"pure Python Expect-like module"

DISTNAME=	pexpect-0.99
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	http://pexpect.sourceforge.net/

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# Python 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pexpect/}
EXTRACT_SUFX=	.tgz

MODULES=	python
MODPY_VERSION=	2.3

EXAMPLESDIR=	${PREFIX}/share/examples/py-pexpect

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/{ANSI,FSM,screen}.py ${EXAMPLESDIR}

.include <bsd.port.mk>
