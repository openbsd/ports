# $OpenBSD: Makefile,v 1.1.1.1 2019/05/02 13:24:30 bcallah Exp $

V =		1.2.5
COMMENT =	implementation of POSIX bc with GNU and BSD extensions
DISTNAME =	bc-${V}
PKGNAME =	ebc-${V}
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	math

HOMEPAGE =	https://github.com/gavinhoward/bc
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =	https://github.com/gavinhoward/bc/releases/download/${V}/

COMPILER =	base-clang ports-gcc

# CONFIGURE_ARGS makes it so we don't run tests that need GNU bc to generate.
CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	configure.sh
CONFIGURE_ARGS =	-G
CONFIGURE_ENV =		CC="${CC}" \
			CFLAGS="${CFLAGS}" \
			EXECPREFIX="e" \
			MANDIR="${PREFIX}/man" \
			NLSPATH="${PREFIX}/share/locale/%L/%N"

FAKE_FLAGS =	DESTDIR="${DESTDIR}"

.include <bsd.port.mk>
