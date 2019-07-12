# $OpenBSD: Makefile,v 1.3 2019/07/12 20:44:37 sthen Exp $

# Only used by lang/flang; only supported on amd64 and arm64
ONLY_FOR_ARCHS =	amd64 arm64

COMMENT =	port of POSIX asynchronous I/O routines from DragonFly BSD
DISTNAME =	libaio_compat-5.2.2
CATEGORIES =	devel

SHARED_LIBS +=	aio_compat                0.0 # 0.0

HOMEPAGE =	https://www.dragonflybsd.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += pthread

MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

NO_TEST =	Yes

.include <bsd.port.mk>
