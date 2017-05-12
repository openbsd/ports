# $OpenBSD: Makefile,v 1.18 2017/05/12 20:27:25 naddy Exp $

COMMENT=	curses spreadsheet-calculator program

DISTNAME=	sc-7.16
REVISION=	4
CATEGORIES=	math

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/financial/spreadsheet/}

MAINTAINER=	Peter Valchev <pvalchev@sightly.net>

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses m termcap

NO_TEST=	Yes

.include <bsd.port.mk>
