COMMENT =		utility for creating secure pipes between socket addresses

DISTNAME =		spiped-1.6.2
CATEGORIES =		security sysutils
REVISION =		1

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://www.tarsnap.com/spiped.html
SITES =			https://www.tarsnap.com/spiped/

# BSD
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

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
