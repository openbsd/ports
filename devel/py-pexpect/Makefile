# $OpenBSD: Makefile,v 1.4 2004/07/23 09:08:08 xsa Exp $

COMMENT=	"pure Python Expect-like module"

DISTNAME=	pexpect-0.999
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	http://pexpect.sourceforge.net/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# Python 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pexpect/}
EXTRACT_SUFX=	.tgz

MODULES=	python

EXAMPLESDIR=	${PREFIX}/share/examples/py-pexpect

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/{ANSI,FSM,screen}.py ${EXAMPLESDIR}

.include <bsd.port.mk>
