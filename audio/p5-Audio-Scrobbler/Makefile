# $OpenBSD: Makefile,v 1.2 2007/03/25 17:27:11 steven Exp $

COMMENT=		"submit tracks to last.fm/audioscrobbler"

DISTNAME=		Audio-Scrobbler-0.01
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		audio

MAINTAINER=		Landry Breuil <gaston@gcu.info>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

RUN_DEPENDS=		::www/p5-libwww \
			::devel/p5-Config-IniFiles

.include <bsd.port.mk>
