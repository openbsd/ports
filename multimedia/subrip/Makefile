# $OpenBSD: Makefile,v 1.3 2007/01/22 17:43:10 espie Exp $

COMMENT=	"extract subtitles from dvds"
DISTNAME=	ogmrip-0.10.0
PKGNAME=	subrip-0.10.0p0
CATEGORIES=	multimedia converters
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ogmrip/}

HOMEPAGE=	http://ogmrip.sourceforge.net/

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}/subrip

do-configure:
	ln -sf ${FILESDIR}/Makefile ${WRKDIST}

RUN_DEPENDS=		::graphics/gocr \
			::x11/mplayer

WANTLIB=		c m
NO_REGRESS=		Yes

FAKE_FLAGS=		BINDIR=${TRUEPREFIX}/bin \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
			DESTDIR=${WRKINST}

post-install:
	${INSTALL_PROGRAM} ${FILESDIR}/subrip ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/subrip.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${FILESDIR}/srttool.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${FILESDIR}/sub2pgm.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
