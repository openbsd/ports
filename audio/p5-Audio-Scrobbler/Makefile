# $OpenBSD: Makefile,v 1.4 2010/07/13 19:46:10 sthen Exp $

COMMENT=		submit tracks to last.fm/audioscrobbler

DISTNAME=		Audio-Scrobbler-0.01
REVISION=		0
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
