# $OpenBSD: Makefile,v 1.1.1.1 2003/02/19 15:42:02 couderc Exp $

COMMENT=		"Ftp daemon which aims to be secure"

VERSION=		1.1.3
DISTNAME=		vsftpd-${VERSION}
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

do-install:
	${INSTALL} ${WRKSRC}/vsftpd ${PREFIX}/sbin/
	${INSTALL_MAN} ${WRKSRC}/vsftpd.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/vsftpd.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vsftpd
	@cp -r ${WRKSRC}/EXAMPLE/* ${PREFIX}/share/examples/vsftpd

.include <bsd.port.mk>
