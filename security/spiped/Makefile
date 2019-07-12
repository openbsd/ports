# $OpenBSD: Makefile,v 1.13 2019/07/12 20:49:36 sthen Exp $

COMMENT =		utility for creating secure pipes between socket addresses

DISTNAME =		spiped-1.6.0
CATEGORIES =		security sysutils
REVISION =		1

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
