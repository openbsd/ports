# $OpenBSD: Makefile,v 1.8 2004/12/27 07:41:44 alek Exp $

COMMENT=	"curses spreadsheet-calculator program"

DISTNAME=	sc-7.15
PKGNAME=	${DISTNAME}p1
CATEGORIES=	math

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/financial/spreadsheet/}

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses m

MAN1=		sc.1 psc.1

NO_REGRESS=	Yes

.include <bsd.port.mk>
