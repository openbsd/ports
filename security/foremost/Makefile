# $OpenBSD: Makefile,v 1.4 2015/05/11 16:24:38 nigel Exp $

COMMENT =		forensic data recovery program

DISTNAME =		foremost-1.5.7
REVISION =		2

CATEGORIES =		security

HOMEPAGE =		http://foremost.sourceforge.net/

# not copyrighted; see COPYRIGHT in main.h
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://foremost.sourceforge.net/pkg/

WANTLIB +=		c

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
