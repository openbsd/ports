# $OpenBSD: Makefile,v 1.1.1.1 1999/05/16 04:10:35 brad Exp $

DISTNAME=	sdd-1.22
CATEGORIES=    	sysutils
MASTER_SITES=	ftp://ftp.fokus.gmd.de/pub/unix/sdd/

MAINTAINER=	naddy@unix-ag.uni-kl.de

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
