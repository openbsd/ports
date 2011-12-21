# $OpenBSD: Makefile,v 1.15 2011/12/21 17:41:52 jasper Exp $

COMMENT=	Python-based build system

VERSION=	2.0.1
DISTNAME=	scons-${VERSION}
CATEGORIES=	devel
REVISION =	2

HOMEPAGE=	http://www.scons.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scons/}

MODULES=	lang/python

USE_GROFF =	Yes
NO_REGRESS=	Yes

SUBST_VARS+=	VERSION

post-extract:
	@perl -pi -e 's,^#!.*python$$,#!${MODPY_BIN},' \
		${WRKSRC}/script/scons{,ign,-time}

post-install:
	${INSTALL_MAN} ${WRKSRC}/scons{,ign,-time}.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
