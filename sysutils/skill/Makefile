# $OpenBSD: Makefile,v 1.2 2000/10/22 15:43:30 espie Exp $

DISTNAME=		skill-3.7@P8
PKGNAME=		skill-3.7.9
CATEGORIES=     	sysutils

MAINTAINER=		jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	no
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	no
PERMIT_DISTFILES_FTP=	yes

WRKDIST=		${WRKDIR}/${PKGNAME}

MASTER_SITES=		ftp://jaguar.cs.utah.edu/pub/skill/
EXTRACT_SUFX=		_tar.Z

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
