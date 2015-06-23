# $OpenBSD: Makefile,v 1.25 2015/06/23 08:02:06 bentley Exp $

COMMENT=	NetBIOS Auditing Tool / Security Kit

DISTNAME=	nat10
PKGNAME=	nbaudit-1.0
REVISION =	1
CATEGORIES=	security net
MASTER_SITES=	${MASTER_SITE_PACKETSTORM:=NT/scanners/}

PERMIT_PACKAGE_CDROM=	Yes

MAKE_FLAGS=	GUESTACCOUNT=_nbaudit

WANTLIB += c

NO_TEST=	Yes

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/nat ${PREFIX}/bin/nbaudit
	@${INSTALL_MAN} ${WRKSRC}/nat.1 ${PREFIX}/man/man1/nbaudit.1

.include <bsd.port.mk>
