# $OpenBSD: Makefile,v 1.5 2000/04/08 15:07:00 espie Exp $

DISTNAME=	mp3cddb
CATEGORIES=	audio
NEED_VERSION=	 1.230
MASTER_SITES=	http://alpha.rulez.org/~drewie/mp3cddb/
RUN_DEPENDS=	${PREFIX}/libdata/perl5/site_perl/MPEG/MP3Info.pm::audio/p5-MPEG-MP3Info \
		${PREFIX}/libdata/perl5/site_perl/CDDB.pm::audio/p5-cddb \
		mp3info::audio/mp3info

MAINTAINER=	angelos@openbsd.org

HOMEPAGE=	http://alpha.rulez.org/~drewie/mp3cddb/

LICENSE_TYPE=   NONE
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
FAKE=			Yes
NO_BUILD=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mp3cddb ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/mp3cddbtag ${PREFIX}/bin

.include <bsd.port.mk>
