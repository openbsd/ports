# $OpenBSD: Makefile,v 1.7 2016/03/20 19:56:06 naddy Exp $

COMMENT=		module providing routines to submit songs to last.fm

DISTNAME=		Music-Audioscrobbler-Submit-0.05
REVISION=		1
CATEGORIES=		audio

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*
CPAN_AUTHOR=		EALLENIII

RUN_DEPENDS=		devel/p5-Config-Options \
			www/p5-libwww

.include <bsd.port.mk>
