# $OpenBSD: Makefile,v 1.4 2000/02/16 10:52:13 espie Exp $

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
	sed -e s/freebsd/openbsd/ os-freebsd.id >os-openbsd.id; \
	cp os-freebsd.def os-openbsd.def; \
    	cp i386-freebsd-cc.rul ${MACHINE}-openbsd-${CC}.rul
	@cd ${WRKSRC}/DEFAULTS; \
	cp Defaults.freebsd Defaults.openbsd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sdd/OBJ/${MACHINE}-openbsd-${CC}/sdd \
		${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/sdd/sdd.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
