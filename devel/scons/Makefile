# $OpenBSD: Makefile,v 1.7 2008/10/07 04:11:56 brad Exp $

COMMENT=	Python-based build system

VERSION=	1.0.1
DISTNAME=	scons-${VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://www.scons.org/

MAINTAINER=	Andrew Dalgleish <openbsd@ajd.net.au>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scons/}

MODULES=	lang/python

NO_REGRESS=	Yes

SUBST_VARS+=	VERSION

post-extract:
	@perl -pi -e 's,^#!.*python$$,#!${MODPY_BIN},' \
		${WRKSRC}/script/scons{,ign,-time}

post-install:
	${INSTALL_MAN} ${WRKSRC}/scons{,ign,-time}.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
