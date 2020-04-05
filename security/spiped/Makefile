# $OpenBSD: Makefile,v 1.14 2020/04/05 21:26:11 jturner Exp $

COMMENT =		utility for creating secure pipes between socket addresses

DISTNAME =		spiped-1.6.1
CATEGORIES =		security sysutils

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://www.tarsnap.com/spiped.html
MASTER_SITES =		http://www.tarsnap.com/spiped/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto pthread

EXTRACT_SUFX =		.tgz
FAKE_FLAGS =		BINDIR="${WRKINST}${PREFIX}/bin" \
			MAN1DIR="${WRKINST}${PREFIX}/man/man1"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/spiped
	${INSTALL_DATA} ${WRKSRC}/COPYRIGHT ${PREFIX}/share/doc/spiped/
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/spiped/
	perl -pi -e 's,/etc/ssh/spiped.key,${SYSCONFDIR}/spiped/spiped.key,' \
	    ${PREFIX}/share/doc/spiped/README.md

.include <bsd.port.mk>
