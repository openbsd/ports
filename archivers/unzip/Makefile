# OpenBSD makefile for:   unzip
# Version required:     5.3.1
# Date created:         24 Nov 1997
# Whom:                 angelos
#
# $OpenBSD: Makefile,v 1.1 1997/11/24 19:49:51 angelos Exp $
#

DISTNAME=       unzip-5.3.1
CATEGORIES=	archivers
MASTER_SITES=   ftp://ftp.cdrom.com/pub/infozip/src/
DISTFILES=      unzip531.tar.gz

MAINTAINER=     angelos@openbsd.org

NO_WRKSUBDIR=   YES
MAKEFILE=       unix/Makefile
ALL_TARGET=     openbsd
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
	install -d -m 555 -o ${SHAREOWN} -g ${SHAREGRP} ${PREFIX}/share/doc/unzip
	cd ${WRKSRC} && \
		${INSTALL_DATA} README Where COPYING ${PREFIX}/share/doc/unzip

.include <bsd.port.mk>
