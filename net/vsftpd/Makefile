# $OpenBSD: Makefile,v 1.3 2003/06/23 19:08:52 sturm Exp $

COMMENT=		"Ftp daemon which aims to be secure"

VERSION=		1.1.3
DISTNAME=		vsftpd-${VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net

HOMEPAGE=		http://vsftpd.beasts.org/

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://vsftpd.beasts.org/users/cevans/

ALL_TARGET=		vsftpd

SAMPLEDIR=		${PREFIX}/share/examples/vsftpd

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
