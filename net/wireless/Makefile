# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:52 sthen Exp $

COMMENT =	automatically scan for and configure wireless networks

V =		6
DISTNAME =	wireless-v$V
PKGNAME =	wireless-$V

CATEGORIES =	net

HOMEPAGE =	https://github.com/farhaven/wireless

MAINTAINER =	Gregor Best <gbe@unobtanium.de>

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge
WANTLIB =	c

MASTER_SITES =	https://github.com/farhaven/wireless/releases/download/v$V/

NO_TEST =	Yes

post-extract:
	sed -i -e 's,/usr/local/bin/wpa_cli,${LOCALBASE}/sbin/wpa_cli,g' \
		-e 's,/etc/wireless.conf,${SYSCONFDIR}/wireless.conf,g' \
			${WRKSRC}/wireless.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wireless ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/wireless.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
