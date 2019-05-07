# $OpenBSD: Makefile,v 1.19 2019/05/07 17:04:59 danj Exp $

COMMENT=	curses spreadsheet-calculator program

DISTNAME=	sc-7.16
REVISION=	5
CATEGORIES=	math

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/financial/spreadsheet/}

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses m termcap

NO_TEST=	Yes

.include <bsd.port.mk>
