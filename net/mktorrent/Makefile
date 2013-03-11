# $OpenBSD: Makefile,v 1.3 2013/03/11 11:35:49 espie Exp $

COMMENT =	command-line .torrent file creator

DISTNAME =	mktorrent-1.0
CATEGORIES =	net
HOMEPAGE =	http://mktorrent.sourceforge.net/

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
