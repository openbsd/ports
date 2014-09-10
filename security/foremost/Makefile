# $OpenBSD: Makefile,v 1.1.1.1 2014/09/10 11:28:06 rpointel Exp $

COMMENT =		forensic data recovery program

DISTNAME =		foremost-1.5.7

CATEGORIES =		security

HOMEPAGE =		http://foremost.sourceforge.net/

# not copyrighted; see COPYRIGHT in main.h
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://foremost.sourceforge.net/pkg/

FAKE_FLAGS =		BIN=${WRKINST}${PREFIX}/bin \
					MAN=${WRKINST}${PREFIX}/man/man8 \
					CONF=${WRKINST}${PREFIX}/share/examples/ \
					MAN_PAGES=foremost.8

post-extract:
	cd ${WRKSRC} && gunzip foremost.8.gz

NO_TEST =		Yes

.include <bsd.port.mk>
