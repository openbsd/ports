# $OpenBSD: Makefile,v 1.11 2005/03/13 20:40:38 couderc Exp $

COMMENT=		"Ftp daemon which aims to be secure"

VERSION=		2.0.2
DISTNAME=		vsftpd-${VERSION}
CATEGORIES=		net

HOMEPAGE=		http://vsftpd.beasts.org/

MAINTAINER=		Alexandre Anriot <aanriot@atlantilde.com>

# GPL2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c util 

MASTER_SITES=		ftp://vsftpd.beasts.org/users/cevans/

ALL_TARGET=		vsftpd

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS} -Wall -W -Wshadow"

SAMPLEDIR=		${PREFIX}/share/examples/vsftpd
NO_REGRESS=		Yes

do-configure:
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," ${WRKSRC}/defs.h

do-install:
	${INSTALL} ${WRKSRC}/vsftpd ${PREFIX}/sbin/
	${INSTALL_MAN} ${WRKSRC}/vsftpd.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/vsftpd.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${SAMPLEDIR}
	@cp -r ${WRKSRC}/EXAMPLE/* ${SAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/vsftpd.conf ${SAMPLEDIR}

.include <bsd.port.mk>
