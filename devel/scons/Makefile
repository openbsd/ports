# $OpenBSD: Makefile,v 1.1.1.1 2004/10/23 12:37:32 xsa Exp $

COMMENT=	"Python-based build system"

DISTNAME=	scons-0.96.1
CATEGORIES=	devel

HOMEPAGE=	http://www.scons.org/

MAINTAINER=	Andrew Dalgleish <openbsd@ajd.net.au>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scons/}

MODULES=	python

NO_REGRESS=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/scons.1    ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/sconsign.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
