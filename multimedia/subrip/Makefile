COMMENT=	extract subtitles from dvds
DISTNAME=	ogmrip-0.10.0
PKGNAME=	subrip-0.10.0
REVISION=	3
CATEGORIES=	multimedia converters
SITES=		${SITE_SOURCEFORGE:=ogmrip/}

HOMEPAGE=	https://ogmrip.sourceforge.net/

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}/subrip

do-configure:
	ln -sf ${FILESDIR}/Makefile ${WRKDIST}

RUN_DEPENDS=		graphics/gocr \
			x11/mplayer

WANTLIB=		c m
NO_TEST=		Yes

FAKE_FLAGS=		BINDIR=${TRUEPREFIX}/bin \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}"

post-install:
	${INSTALL_PROGRAM} ${FILESDIR}/subrip ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/subrip.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${FILESDIR}/srttool.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${FILESDIR}/sub2pgm.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
