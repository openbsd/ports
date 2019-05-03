# $OpenBSD: Makefile,v 1.9 2019/05/03 06:38:46 benoit Exp $

COMMENT =		password recovery tool for PDF-files

DISTNAME =		pdfcrack-0.17
CATEGORIES =		security

HOMEPAGE =		http://pdfcrack.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pdfcrack/}

MAKE_FLAGS =		CFLAGS="${CFLAGS}" CC="${CC}"

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/pdfcrack ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/pdfcrack.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
