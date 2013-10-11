# $OpenBSD: Makefile,v 1.24 2013/10/11 23:50:43 naddy Exp $

COMMENT=	NetBIOS Auditing Tool / Security Kit

DISTNAME=	nat10
PKGNAME=	nbaudit-1.0
REVISION =	1
CATEGORIES=	security net
MASTER_SITES=	ftp://ftp.auscert.org.au/pub/coast/mirrors/ftp.secnet.com/tools/nat10/ \
		${MASTER_SITE_PACKETSTORM:=NT/scanners/}

PERMIT_PACKAGE_CDROM=	Yes

MAKE_FLAGS=	GUESTACCOUNT=_nbaudit

WANTLIB += c

NO_TEST=	Yes

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/nat ${PREFIX}/bin/nbaudit
	@${INSTALL_MAN} ${WRKSRC}/nat.1 ${PREFIX}/man/man1/nbaudit.1

.include <bsd.port.mk>
