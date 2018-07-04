# $OpenBSD: Makefile,v 1.1.1.1 2018/07/04 21:08:39 bcallah Exp $

COMMENT =	port of POSIX asynchronous I/O routines from DragonFly BSD
DISTNAME =	libaio_compat-5.2.2
CATEGORIES =	devel

SHARED_LIBS +=	aio_compat                0.0 # 0.0

HOMEPAGE =	https://www.dragonflybsd.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread

MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

NO_TEST =	Yes

.include <bsd.port.mk>
