# $OpenBSD: Makefile,v 1.9 2002/09/08 12:46:03 jakob Exp $

COMMENT=	"signal or reprioritize specified processes"

VERSION=		4.1p1
DISTNAME=		skill-${VERSION}
CATEGORIES=     	sysutils

MAINTAINER=		Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=		ftp://fast.cs.utah.edu/pub/skill-${VERSION}/
EXTRACT_SUFX=		.tgz

MAKE_FLAGS=		CC='${CC}' CFLAGS='${CFLAGS}'

do-configure:
	@cd ${WRKDIST}; ./Config

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/skill ${PREFIX}/bin
	@ln -f ${PREFIX}/bin/skill ${PREFIX}/bin/snice
	@${INSTALL_MAN} ${WRKSRC}/skill.1 ${PREFIX}/man/man1
	@ln -f ${PREFIX}/man/man1/skill.1 ${PREFIX}/man/man1/snice.1
	@${CHOWN} root:kmem ${PREFIX}/bin/skill
	@${CHMOD} 2555 ${PREFIX}/bin/skill

.include <bsd.port.mk>
