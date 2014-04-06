# $OpenBSD: Makefile,v 1.8 2014/04/06 12:05:20 sthen Exp $

COMMENT=		module to submit songs to last.fm from MPD
DISTNAME=		Music-Audioscrobbler-MPD-0.13
REVISION=		2
CATEGORIES=		audio

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
CPAN_AUTHOR=		EALLENIII
MODCPAN_EXAMPLES=	Yes

RUN_DEPENDS=		audio/p5-Music-Audioscrobbler-Submit \
			devel/p5-Proc-Daemon

post-configure:
	@rm -f ${WRKSRC}/examples/*.orig

.include <bsd.port.mk>
