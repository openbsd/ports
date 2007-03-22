# $OpenBSD: Makefile,v 1.1.1.1 2007/03/22 17:45:03 jasper Exp $

COMMENT=		"submit tracks to last.fm/audioscrobbler"

DISTNAME=		Audio-Scrobbler-0.01
CATEGORIES=		audio

MAINTAINER=		Landry Breuil <gaston@gcu.info>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
CPAN_AUTHOR=		ROAM

BUILD_DEPENDS=		::devel/p5-Config-IniFiles
RUN_DEPENDS=		${BUILD_DEPENDS} \
			::security/p5-Digest-MD5-M4p \
			::www/p5-libwww

.include <bsd.port.mk>
