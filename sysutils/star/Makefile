# $OpenBSD: Makefile,v 1.6 2000/03/30 15:44:22 kevlo Exp $
# $FreeBSD: Makefile,v 1.7 1998/12/24 13:15:23 dirk Exp $

DISTNAME=	star-1.2
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.fokus.gmd.de/pub/unix/star/ \
		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= utils/compress

MAINTAINER=	naddy@unix-ag.uni-kl.de

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes
USE_GMAKE=	Yes
MAKE_ENV=	MAKEPROG="${GMAKE}" CCOM="${CC}"

do-configure:
.if ${MACHINE} != "i386" || ${CC} != "cc"
	@rm -f ${WRKSRC}/RULES/${MACHINE}-openbsd-${CC}.rul
	@cp ${WRKSRC}/RULES/i386-openbsd-cc.rul \
	 ${WRKSRC}/RULES/${MACHINE}-openbsd-${CC}.rul
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/star/OBJ/${MACHINE}-openbsd-${CC}/star ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/star/star.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
