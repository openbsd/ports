# $OpenBSD: Makefile,v 1.10 2007/09/15 18:44:37 steven Exp $

COMMENT=	curses spreadsheet-calculator program

DISTNAME=	sc-7.16
CATEGORIES=	math

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/financial/spreadsheet/}

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses m termcap

MAN1=		sc.1 psc.1

NO_REGRESS=	Yes

.include <bsd.port.mk>
