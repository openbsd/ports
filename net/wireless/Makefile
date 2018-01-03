# $OpenBSD: Makefile,v 1.3 2018/01/03 23:27:01 danj Exp $

COMMENT =	automatically scan for and configure wireless networks
GH_ACCOUNT =	farhaven
GH_PROJECT =	wireless
GH_TAGNAME =	v4

CATEGORIES =	net

MAINTAINER =	Gregor Best <gbe@unobtanium.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge
WANTLIB =	c

NO_TEST =	Yes

post-extract:
	sed -i -e 's,/usr/local/bin/wpa_cli,${LOCALBASE}/sbin/wpa_cli,g' \
		-e 's,/etc/wireless.conf,${SYSCONFDIR}/wireless.conf,g' \
			${WRKSRC}/wireless.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wireless ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/wireless.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
