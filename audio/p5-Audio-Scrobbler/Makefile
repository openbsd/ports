# $OpenBSD: Makefile,v 1.12 2019/07/12 20:43:38 sthen Exp $

COMMENT=		submit tracks to last.fm/audioscrobbler

DISTNAME=		Audio-Scrobbler-0.01
REVISION=		2
CATEGORIES=		audio

MAINTAINER=		Landry Breuil <landry@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		www/p5-libwww \
			devel/p5-Config-IniFiles

.include <bsd.port.mk>
