# $OpenBSD: Makefile,v 1.22 2019/07/12 20:49:51 sthen Exp $

COMMENT=	signal or reprioritize specified processes

VERSION=		4.1
DISTNAME=		skill-${VERSION}
REVISION=		6
CATEGORIES=		sysutils

MAINTAINER=		Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=		ftp://fast.cs.utah.edu/pub/skill-${VERSION}/
EXTRACT_SUFX=		.tgz

MAKE_FLAGS=		CC='${CC}' CFLAGS='${CFLAGS}'

NO_TEST=		Yes

do-configure:
	@cd ${WRKDIST}; ./Config

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/skill ${PREFIX}/bin
	@ln -f ${PREFIX}/bin/skill ${PREFIX}/bin/snice
	${INSTALL_MAN} ${WRKSRC}/skill.1 ${PREFIX}/man/man1
	@ln -f ${PREFIX}/man/man1/skill.1 ${PREFIX}/man/man1/snice.1

.include <bsd.port.mk>
