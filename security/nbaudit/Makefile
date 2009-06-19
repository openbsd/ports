# $OpenBSD: Makefile,v 1.18 2009/06/19 10:31:20 sthen Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1998/02/14 04:10:30 obrien Exp $

COMMENT=	NetBIOS Auditing Tool / Security Kit

DISTNAME=	nat10
PKGNAME=	nbaudit-1.0p0
CATEGORIES=	security net
MASTER_SITES=	ftp://ftp.auscert.org.au/pub/coast/mirrors/ftp.secnet.com/tools/nat10/ \
		${MASTER_SITE_PACKETSTORM:=NT/scanners/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	GUESTACCOUNT=_nbaudit

WANTLIB += c

NO_REGRESS=	Yes

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/nat ${PREFIX}/bin/nbaudit
	@${INSTALL_MAN} ${WRKSRC}/nat.1 ${PREFIX}/man/man1/nbaudit.1

.include <bsd.port.mk>
