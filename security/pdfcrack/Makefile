# $OpenBSD: Makefile,v 1.10 2019/07/12 20:49:09 sthen Exp $

COMMENT =		password recovery tool for PDF-files

DISTNAME =		pdfcrack-0.17
CATEGORIES =		security

HOMEPAGE =		http://pdfcrack.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pdfcrack/}

MAKE_FLAGS =		CFLAGS="${CFLAGS}" CC="${CC}"

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/pdfcrack ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/pdfcrack.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
