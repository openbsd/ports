# $OpenBSD: Makefile,v 1.2 2000/03/01 01:50:31 angelos Exp $

DISTNAME=	mp3cddb
CATEGORIES=	audio
MASTER_SITES=	http://alpha.rulez.org/~drewie/mp3cddb/
RUN_DEPENDS=	${PREFIX}/libdata/perl5/site_perl/MPEG/MP3Info.pm:${PORTSDIR}/audio/p5-MPEG-MP3Info \
		${PREFIX}/libdata/perl5/site_perl/CDDB.pm:${PORTSDIR}/audio/p5-cddb \
		mp3info:${PORTSDIR}/audio/mp3info

MAINTAINER=	angelos@openbsd.org

HOMEPAGE=	http://alpha.rulez.org/~drewie/mp3cddb/

LICENSE_TYPE=   NONE
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

do-build:	# Nothing needed

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mp3cddb ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/mp3cddbtag ${PREFIX}/bin

.include <bsd.port.mk>
