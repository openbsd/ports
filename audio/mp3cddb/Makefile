# $OpenBSD: Makefile,v 1.11 2001/03/13 19:45:02 angelos Exp $

DISTNAME=	mp3cddb-0.1
CATEGORIES=	audio
NEED_VERSION=	1.300
HOMEPAGE=	http://k2.jozsef.kando.hu/~drewie/mp3cddb/
MASTER_SITES=	${HOMEPAGE}
RUN_DEPENDS=	${PREFIX}/libdata/perl5/site_perl/MPEG/MP3Info.pm::audio/p5-MP3-Info \
		${PREFIX}/libdata/perl5/site_perl/CDDB.pm::audio/p5-cddb \
		mp3info::audio/mp3info

MAINTAINER=	ports@openbsd.org


LICENSE_TYPE=   	GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_BUILD=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mp3cddb ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/mp3cddbtag ${PREFIX}/bin

.include <bsd.port.mk>
