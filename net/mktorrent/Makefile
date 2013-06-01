# $OpenBSD: Makefile,v 1.4 2013/06/01 14:18:40 ajacoutot Exp $

COMMENT =	command-line .torrent file creator

DISTNAME =	mktorrent-1.0
CATEGORIES =	net
HOMEPAGE =	http://mktorrent.sourceforge.net/
REVISION =	0

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c crypto pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mktorrent/}

NO_TEST =	Yes

MAKE_FILE =	BSDmakefile
MAKE_FLAGS =	USE_PTHREADS=1 \
		USE_OPENSSL=1 \
		USE_LONG_OPTIONS=1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mktorrent ${PREFIX}/bin

.include <bsd.port.mk>
