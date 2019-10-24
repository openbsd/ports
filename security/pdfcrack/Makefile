# $OpenBSD: Makefile,v 1.11 2019/10/24 08:02:31 benoit Exp $

COMMENT =		password recovery tool for PDF-files

DISTNAME =		pdfcrack-0.18
CATEGORIES =		security

HOMEPAGE =		https://pdfcrack.sourceforge.net/

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
