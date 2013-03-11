# $OpenBSD: Makefile,v 1.16 2013/03/11 10:50:30 espie Exp $

COMMENT=	Python-based build system

VERSION=	2.0.1
DISTNAME=	scons-${VERSION}
CATEGORIES=	devel
REVISION =	2

HOMEPAGE=	http://www.scons.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scons/}

MODULES=	lang/python

USE_GROFF =	Yes
NO_TEST=	Yes

SUBST_VARS+=	VERSION

post-extract:
	@perl -pi -e 's,^#!.*python$$,#!${MODPY_BIN},' \
		${WRKSRC}/script/scons{,ign,-time}

post-install:
	${INSTALL_MAN} ${WRKSRC}/scons{,ign,-time}.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
