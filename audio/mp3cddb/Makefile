# $OpenBSD: Makefile,v 1.13 2001/10/28 13:05:45 espie Exp $

COMMENT=	"embedding CDDB information in MP3s"
DISTNAME=	mp3cddb-0.1
CATEGORIES=	audio
NEED_VERSION=	1.364
HOMEPAGE=	http://k2.jozsef.kando.hu/~drewie/mp3cddb/
MASTER_SITES=	${HOMEPAGE}
RUN_DEPENDS=	${PREFIX}/libdata/perl5/site_perl/MPEG/MP3Info.pm::audio/p5-MP3-Info \
		${PREFIX}/libdata/perl5/site_perl/CDDB.pm::audio/p5-cddb \
		mp3info::audio/mp3info

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_BUILD=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mp3cddb ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/mp3cddbtag ${PREFIX}/bin

.include <bsd.port.mk>
