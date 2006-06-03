# $OpenBSD: Makefile,v 1.3 2006/06/03 09:37:09 alek Exp $

COMMENT=	"Python-based build system"

VERSION=	0.96.92
DISTNAME=	scons-${VERSION}
PKGNAME=	${DISTNAME}p0
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

SUBST_VARS+=	VERSION

post-install:
	${INSTALL_MAN} ${WRKSRC}/scons.1    ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/sconsign.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
