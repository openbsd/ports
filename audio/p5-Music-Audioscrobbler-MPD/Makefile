# $OpenBSD: Makefile,v 1.12 2020/07/03 21:44:30 sthen Exp $

COMMENT=		module to submit songs to last.fm from MPD
DISTNAME=		Music-Audioscrobbler-MPD-0.13
REVISION=		3
CATEGORIES=		audio

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*
CPAN_AUTHOR=		EALLENIII
MODCPAN_EXAMPLES=	Yes

RUN_DEPENDS=		audio/p5-Music-Audioscrobbler-Submit \
			devel/p5-Proc-Daemon

post-configure:
	rm ${WRKSRC}/examples/*.orig

.include <bsd.port.mk>
