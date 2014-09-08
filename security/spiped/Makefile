# $OpenBSD: Makefile,v 1.6 2014/09/08 22:28:08 jturner Exp $

COMMENT =		utility for creating secure pipes between socket addresses

DISTNAME =		spiped-1.4.1
CATEGORIES =		security sysutils

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://www.tarsnap.com/spiped.html
MASTER_SITES =		http://www.tarsnap.com/spiped/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto pthread

EXTRACT_SUFX =		.tgz
NO_TEST =		Yes
FAKE_FLAGS =		BINDIR="${WRKINST}${PREFIX}/bin" \
			MAN1DIR="${WRKINST}${PREFIX}/man/man1"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/spiped
	${INSTALL_DATA} ${WRKSRC}/COPYRIGHT ${PREFIX}/share/doc/spiped/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/spiped/
	${INSTALL_DATA} ${WRKSRC}/spipe/README ${PREFIX}/share/doc/spiped/README-spipe
	${INSTALL_DATA} ${WRKSRC}/spiped/README ${PREFIX}/share/doc/spiped/README-spiped
	perl -pi -e 's,/etc/ssh/spiped.key,${SYSCONFDIR}/spiped/spiped.key,' \
	    ${PREFIX}/share/doc/spiped/README

.include <bsd.port.mk>
