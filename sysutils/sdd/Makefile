# $OpenBSD: Makefile,v 1.12 2002/03/21 21:25:52 espie Exp $

COMMENT=	"faster and improved version of dd"

DISTNAME=	sdd-1.31
CATEGORIES=	sysutils
NEED_VERSION=	1.515

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.fokus.gmd.de/pub/unix/sdd/

USE_GMAKE=	Yes
MAKE_ENV=	MAKEPROG="${MAKE_PROGRAM}" CCOM="${CC}"

.if ${MACHINE} != "i386" || ${CC} != "cc"
do-configure:
	@ln -sf ${WRKSRC}/RULES/i386-openbsd-cc.rul \
		${WRKSRC}/RULES/${MACHINE}-openbsd-${CC}.rul
.endif

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/sdd/OBJ/${MACHINE}-openbsd-${CC}/sdd \
		${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/sdd/sdd.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
