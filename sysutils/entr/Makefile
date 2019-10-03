# $OpenBSD: Makefile,v 1.17 2019/10/03 17:09:08 rsadowski Exp $

COMMENT =	run arbitrary commands when files change

DISTNAME =	entr-4.3

CATEGORIES =	sysutils

HOMEPAGE =	http://entrproject.org/

# ISC
PERMIT_PACKAGE = Yes

WANTLIB += c

MASTER_SITES =	http://entrproject.org/code/

MAKE_FILE =	Makefile.bsd
MAKE_FLAGS =	CC="${CC}" \
		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS =	DESTDIR=""

.include <bsd.port.mk>
