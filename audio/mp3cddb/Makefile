# $OpenBSD: Makefile,v 1.8 2000/10/22 14:02:51 espie Exp $

DISTNAME=	mp3cddb
CATEGORIES=	audio
NEED_VERSION=	1.300
HOMEPAGE=	http://alpha.rulez.org/~drewie/mp3cddb/
MASTER_SITES=	${HOMEPAGE}
RUN_DEPENDS=	${PREFIX}/libdata/perl5/site_perl/MPEG/MP3Info.pm::audio/p5-MP3-Info \
		${PREFIX}/libdata/perl5/site_perl/CDDB.pm::audio/p5-cddb \
		mp3info::audio/mp3info

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>


LICENSE_TYPE=   NONE
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_BUILD=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mp3cddb ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/mp3cddbtag ${PREFIX}/bin

.include <bsd.port.mk>
