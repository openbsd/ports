# $OpenBSD: Makefile,v 1.11 2000/09/18 09:08:25 obecian Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1998/02/14 04:10:30 obrien Exp $

DISTNAME=	nat10
PKGNAME=	nbaudit-1.0
CATEGORIES=	security net
NEED_VERSION=	1.320
MASTER_SITES=	ftp://ftp.auscert.org.au/pub/coast/mirrors/ftp.secnet.com/tools/nat10/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/nat ${PREFIX}/bin/nbaudit
	@${INSTALL_MAN} ${WRKSRC}/nat.1 ${PREFIX}/man/man1/nbaudit.1

.include <bsd.port.mk>
