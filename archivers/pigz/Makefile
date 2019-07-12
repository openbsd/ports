# $OpenBSD: Makefile,v 1.8 2019/07/12 20:43:29 sthen Exp $

# __builtin_clz
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT =	parallel implementation of gzip utilizing multiple cores

DISTNAME =	pigz-2.4
REVISION =	0
CATEGORIES =	archivers
HOMEPAGE =	https://zlib.net/pigz/

MAINTAINER =	Klemens Nanni <kn@openbsd.org>

# zlib + Apache
PERMIT_PACKAGE =		Yes

# uses pledge()
WANTLIB =	c m pthread z

MASTER_SITES =	https://zlib.net/pigz/

MAKE_FLAGS =	CC="${CC}" \
		CFLAGS="${CFLAGS} -Wall -Wextra"

ALL_TARGET =	pigz

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/pigz ${PREFIX}/bin
	cd ${PREFIX}/bin && ln -f pigz unpigz
	${INSTALL_MAN} ${WRKSRC}/pigz.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
