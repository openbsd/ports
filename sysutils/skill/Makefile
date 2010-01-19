# $OpenBSD: Makefile,v 1.15 2010/01/19 15:25:21 okan Exp $

COMMENT=	signal or reprioritize specified processes

VERSION=		4.1
DISTNAME=		skill-${VERSION}
PKGNAME=		skill-${VERSION}p3
CATEGORIES=     	sysutils

MAINTAINER=		Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes
WANTLIB=		c

MASTER_SITES=		ftp://fast.cs.utah.edu/pub/skill-${VERSION}/
EXTRACT_SUFX=		.tgz

MAKE_FLAGS=		CC='${CC}' CFLAGS='${CFLAGS}'

NO_REGRESS=		Yes

do-configure:
	@cd ${WRKDIST}; ./Config

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/skill ${PREFIX}/bin
	@ln -f ${PREFIX}/bin/skill ${PREFIX}/bin/snice
	${INSTALL_MAN} ${WRKSRC}/skill.1 ${PREFIX}/man/man1
	@ln -f ${PREFIX}/man/man1/skill.1 ${PREFIX}/man/man1/snice.1

.include <bsd.port.mk>
