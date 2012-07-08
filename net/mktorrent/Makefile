# $OpenBSD: Makefile,v 1.2 2012/07/08 21:23:24 gonzalo Exp $

COMMENT =	command-line .torrent file creator

DISTNAME =	mktorrent-1.0
CATEGORIES =	net
HOMEPAGE =	http://mktorrent.sourceforge.net/

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c crypto pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mktorrent/}

NO_REGRESS =	Yes

MAKE_FILE =	BSDmakefile
MAKE_FLAGS =	USE_PTHREADS=1 \
		USE_OPENSSL=1 \
		USE_LONG_OPTIONS=1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mktorrent ${PREFIX}/bin

.include <bsd.port.mk>
