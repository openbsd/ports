# $OpenBSD: Makefile,v 1.2 2019/07/12 20:49:51 sthen Exp $

V =		1.0
COMMENT =	simple dd(1) replacement utility from Sortix
DISTNAME =	rw-portable-${V}
PKGNAME =	rw-${V}
CATEGORIES =	sysutils

HOMEPAGE =	https://sortix.org/rw/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c

MASTER_SITES =	https://sortix.org/rw/release/

FAKE_FLAGS =	DESTDIR= MANDIR="${DESTDIR}${PREFIX}/man"

NO_TEST =	Yes

.include <bsd.port.mk>
