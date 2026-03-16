COMMENT =		password recovery tool for PDF-files

DISTNAME =		pdfcrack-0.21
CATEGORIES =		security

HOMEPAGE =		https://pdfcrack.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

# cc -O2 -pipe    -c main.c
# main.c: In function 'alarmInterrupt':
# main.c:40: error: parameter name omitted
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c


WANTLIB =		c

SITES =			${SITE_SOURCEFORGE:=pdfcrack/}

MAKE_FLAGS =		CFLAGS="${CFLAGS}" CC="${CC}"

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/pdfcrack ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/pdfcrack.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
