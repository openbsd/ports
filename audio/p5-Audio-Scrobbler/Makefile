# $OpenBSD: Makefile,v 1.10 2013/10/11 23:48:05 naddy Exp $

COMMENT=		submit tracks to last.fm/audioscrobbler

DISTNAME=		Audio-Scrobbler-0.01
REVISION=		2
CATEGORIES=		audio

MAINTAINER=		Landry Breuil <landry@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

RUN_DEPENDS=		www/p5-libwww \
			devel/p5-Config-IniFiles

.include <bsd.port.mk>
