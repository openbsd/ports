# $OpenBSD: Makefile,v 1.27 2019/07/12 20:49:05 sthen Exp $

COMMENT=	NetBIOS Auditing Tool / Security Kit

DISTNAME=	nat10
PKGNAME=	nbaudit-1.0
REVISION =	1
CATEGORIES=	security net
MASTER_SITES=	${MASTER_SITE_PACKETSTORM:=NT/scanners/}
FIX_EXTRACT_PERMISSIONS=Yes

PERMIT_PACKAGE=	Yes

MAKE_FLAGS=	GUESTACCOUNT=_nbaudit

WANTLIB += c

NO_TEST=	Yes

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/nat ${PREFIX}/bin/nbaudit
	@${INSTALL_MAN} ${WRKSRC}/nat.1 ${PREFIX}/man/man1/nbaudit.1

.include <bsd.port.mk>
