# $OpenBSD: Makefile,v 1.6 2000/07/23 11:24:16 naddy Exp $

DISTNAME=	sdd-1.22
CATEGORIES=	sysutils
NEED_VERSION=	1.319

MAINTAINER=	naddy@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.fokus.gmd.de/pub/unix/sdd/

USE_GMAKE=	Yes
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
