# $OpenBSD: Makefile,v 1.8 2000/09/23 12:38:22 naddy Exp $
# $FreeBSD: Makefile,v 1.7 1998/12/24 13:15:23 dirk Exp $

DISTNAME=	star-1.2
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.fokus.gmd.de/pub/unix/star/ \
		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= utils/compress

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
MAKE_ENV=	MAKEPROG="${GMAKE}" CCOM="${CC}"

.if ${MACHINE} != "i386" || ${CC} != "cc"
do-configure:
	@rm -f ${WRKSRC}/RULES/${MACHINE}-openbsd-${CC}.rul
	@cp ${WRKSRC}/RULES/i386-openbsd-cc.rul \
	    ${WRKSRC}/RULES/${MACHINE}-openbsd-${CC}.rul
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/star/OBJ/${MACHINE}-openbsd-${CC}/star \
	    ${PREFIX}/bin
	cd ${PREFIX}/bin; ln -sf star ustar
	${INSTALL_MAN} ${WRKSRC}/star/star.1 ${PREFIX}/man/man1
	cd ${PREFIX}/man/man1; ln -sf star.1 ustar.1

.include <bsd.port.mk>
