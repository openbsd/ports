# $OpenBSD: Makefile,v 1.14 2001/11/13 22:13:22 espie Exp $

COMMENT=	"embedding CDDB information in MP3s"
DISTNAME=	mp3cddb-0.1
CATEGORIES=	audio
NEED_VERSION=	1.496
HOMEPAGE=	http://k2.jozsef.kando.hu/~drewie/mp3cddb/
MASTER_SITES=	${HOMEPAGE}
RUN_DEPENDS=	::audio/p5-MP3-Info \
		::audio/p5-cddb \
		::audio/mp3info

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_BUILD=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mp3cddb ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/mp3cddbtag ${PREFIX}/bin

.include <bsd.port.mk>
