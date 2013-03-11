# $OpenBSD: Makefile,v 1.19 2013/03/11 11:41:32 espie Exp $

COMMENT=	signal or reprioritize specified processes

VERSION=		4.1
DISTNAME=		skill-${VERSION}
REVISION =		4
CATEGORIES=     	sysutils

MAINTAINER=		Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	yes
WANTLIB=		c

MASTER_SITES=		ftp://fast.cs.utah.edu/pub/skill-${VERSION}/
EXTRACT_SUFX=		.tgz

MAKE_FLAGS=		CC='${CC}' CFLAGS='${CFLAGS}'
USE_GROFF =		Yes

NO_TEST=		Yes

do-configure:
	@cd ${WRKDIST}; ./Config

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/skill ${PREFIX}/bin
	@ln -f ${PREFIX}/bin/skill ${PREFIX}/bin/snice
	${INSTALL_MAN} ${WRKSRC}/skill.1 ${PREFIX}/man/man1
	@ln -f ${PREFIX}/man/man1/skill.1 ${PREFIX}/man/man1/snice.1

.include <bsd.port.mk>
