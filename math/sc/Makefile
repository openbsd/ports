# $OpenBSD: Makefile,v 1.12 2011/06/25 15:33:33 jasper Exp $

COMMENT=	curses spreadsheet-calculator program

DISTNAME=	sc-7.16
REVISION=	0
CATEGORIES=	math

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/financial/spreadsheet/}

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses m termcap

MAN1=		sc.1 psc.1

USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
