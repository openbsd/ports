# $OpenBSD: Makefile,v 1.12 2001/05/06 03:45:58 lebel Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1998/02/14 04:10:30 obrien Exp $

COMMENT=	"NetBIOS Auditing Tool / Security Kit"

DISTNAME=	nat10
PKGNAME=	nbaudit-1.0
CATEGORIES=	security net
NEED_VERSION=	1.402
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
