# $OpenBSD: Makefile,v 1.5 2018/06/04 19:52:09 kn Exp $

COMMENT =	automatically scan for and configure wireless networks

V =		6
DISTNAME =	wireless-v$V
PKGNAME =	wireless-$V

CATEGORIES =	net

HOMEPAGE =	https://github.com/farhaven/wireless

MAINTAINER =	Gregor Best <gbe@unobtanium.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

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
