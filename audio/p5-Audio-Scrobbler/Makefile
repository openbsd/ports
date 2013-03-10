# $OpenBSD: Makefile,v 1.8 2013/03/10 22:55:04 espie Exp $

COMMENT=		submit tracks to last.fm/audioscrobbler

DISTNAME=		Audio-Scrobbler-0.01
REVISION=		1
CATEGORIES=		audio

MAINTAINER=		Landry Breuil <gaston@gcu.info>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		www/p5-libwww \
			devel/p5-Config-IniFiles

.include <bsd.port.mk>
