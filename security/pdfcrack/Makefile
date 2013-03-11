# $OpenBSD: Makefile,v 1.3 2013/03/11 11:41:27 espie Exp $

COMMENT =		password recovery tool for PDF-files

DISTNAME =		pdfcrack-0.11
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
        
.include <bsd.port.mk>
