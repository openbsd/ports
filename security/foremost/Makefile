# $OpenBSD: Makefile,v 1.2 2014/10/05 07:55:11 rpointel Exp $

COMMENT =		forensic data recovery program

DISTNAME =		foremost-1.5.7
REVISION =		0

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

pre-configure:
	perl -pi -e 's,/usr/local/etc,${SYSCONFDIR},' ${WRKSRC}/config.c

NO_TEST =		Yes

.include <bsd.port.mk>
