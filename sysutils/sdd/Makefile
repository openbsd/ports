# $OpenBSD: Makefile,v 1.3 2000/02/15 05:05:17 turan Exp $

DISTNAME=	sdd-1.22
CATEGORIES=    	sysutils
MASTER_SITES=	ftp://ftp.fokus.gmd.de/pub/unix/sdd/

MAINTAINER=	naddy@unix-ag.uni-kl.de

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

USE_GMAKE=	yes
MAKE_ENV=	MAKEPROG=gmake CCOM=${CC}

do-configure:
	@cd ${WRKSRC}/RULES; \
	${SED} -e s/freebsd/openbsd/ os-freebsd.id >os-openbsd.id; \
	${CP} os-freebsd.def os-openbsd.def; \
    	${CP} i386-freebsd-cc.rul ${MACHINE}-openbsd-${CC}.rul
	@cd ${WRKSRC}/DEFAULTS; \
	${CP} Defaults.freebsd Defaults.openbsd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sdd/OBJ/${MACHINE}-openbsd-${CC}/sdd \
		${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/sdd/sdd.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
