# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:32 sthen Exp $

COMMENT =	command-line .torrent file creator

V =		1.1
GH_ACCOUNT =	Rudde
GH_PROJECT =	mktorrent
DISTNAME =	${GH_PROJECT}-${V}
DISTFILES =	v${V}.tar.gz
CATEGORIES =	net

HOMEPAGE =	https://github.com/Rudde/mktorrent
MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =	c crypto pthread

NO_TEST =	Yes

MAKE_FILE =	BSDmakefile
MAKE_FLAGS =	USE_PTHREADS=1 \
		USE_OPENSSL=1 \
		USE_LONG_OPTIONS=1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mktorrent ${PREFIX}/bin

.include <bsd.port.mk>
