# $OpenBSD: Makefile,v 1.6 2001/05/06 03:59:07 lebel Exp $

COMMENT=	"signal or reprioritize specified processes"

DISTNAME=		skill-4.0
CATEGORIES=     	sysutils

MAINTAINER=		Jakob Schlyter <jakob@openbsd.org>
NEED_VERSION=		1.402

PERMIT_PACKAGE_CDROM=	no
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	no
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=		ftp://jaguar.cs.utah.edu/pub/skill/
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
