# $OpenBSD: Makefile,v 1.17 2015/10/13 06:29:38 bentley Exp $

COMMENT=	curses spreadsheet-calculator program

DISTNAME=	sc-7.16
REVISION=	3
CATEGORIES=	math

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/financial/spreadsheet/}

MAINTAINER=	Peter Valchev <pvalchev@sightly.net>

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses m termcap

NO_TEST=	Yes

.include <bsd.port.mk>
