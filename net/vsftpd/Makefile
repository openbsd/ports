# $OpenBSD: Makefile,v 1.15 2005/09/16 16:40:19 aanriot Exp $

COMMENT=		"Ftp daemon which aims to be secure"

VERSION=		2.0.3
DISTNAME=		vsftpd-${VERSION}
PKGNAME=		${DISTNAME}p1
CATEGORIES=		net

HOMEPAGE=		http://vsftpd.beasts.org/

MAINTAINER=		Alexandre Anriot <aanriot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto util ssl wrap

MASTER_SITES=		ftp://vsftpd.beasts.org/users/cevans/

ALL_TARGET=		vsftpd

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS} -Wall -W -Wshadow"

NO_REGRESS=		Yes

do-configure:
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," ${WRKSRC}/defs.h
	@perl -pi -e "s,/usr/share/ssl/certs/,/etc/ssl/private/,g" \
		${WRKSRC}/tunables.c \
		${WRKSRC}/README.ssl

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vsftpd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vsftpd
	${INSTALL_PROGRAM} ${WRKSRC}/vsftpd ${PREFIX}/sbin/
	${INSTALL_MAN} ${WRKSRC}/vsftpd.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/vsftpd.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA} ${WRKSRC}/vsftpd.conf ${PREFIX}/share/examples/vsftpd
	@cp -r ${WRKSRC}/EXAMPLE/* ${PREFIX}/share/examples/vsftpd

.for d in FAQ INSTALL README README.ssl
	${INSTALL_DATA} ${WRKSRC}/$d ${PREFIX}/share/doc/vsftpd
.endfor

.include <bsd.port.mk>
