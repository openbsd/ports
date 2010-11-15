# $OpenBSD: Makefile,v 1.6 2010/11/15 00:22:48 espie Exp $

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
USE_GROFF =		Yes

RUN_DEPENDS=		www/p5-libwww \
			devel/p5-Config-IniFiles

.include <bsd.port.mk>
