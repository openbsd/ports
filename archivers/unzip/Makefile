# $OpenBSD: Makefile,v 1.6 1999/03/24 04:35:24 fgsch Exp $
#

DISTNAME=	unzip540
PKGNAME=	unzip-5.40
CATEGORIES=	archivers
MASTER_SITES=   ftp://ftp.cdrom.com/pub/infozip/src/

MAINTAINER=     form@OpenBSD.ORG

WRKSRC=		${WRKDIR}/${PKGNAME}
MAKEFILE=       unix/Makefile
ALL_TARGET=     bsd
MAKE_FLAGS=     LOCAL_UNZIP="${CFLAGS} -DUSE_UNSHRINK" -f
MAN1=           funzip.1 unzip.1 unzipsfx.1 zipgrep.1 zipinfo.1

do-install:
	cd ${WRKSRC} && \
		${INSTALL_PROGRAM} unzip funzip unzipsfx ${PREFIX}/bin
	ln -sf unzip ${PREFIX}/bin/zipinfo
	cd ${WRKSRC}/unix && \
		${INSTALL_SCRIPT} zipgrep ${PREFIX}/bin
	cd ${WRKSRC}/unix && \
		${INSTALL_MAN} ${MAN1} ${PREFIX}/man/man1
	${INSTALL} -d -m 555 -o ${SHAREOWN} -g ${SHAREGRP} ${PREFIX}/share/doc/unzip
	cd ${WRKSRC} && \
		${INSTALL_DATA} README COPYING WHERE ${PREFIX}/share/doc/unzip

.include <bsd.port.mk>
