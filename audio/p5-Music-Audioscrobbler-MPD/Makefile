# $OpenBSD: Makefile,v 1.4 2010/10/18 16:52:46 espie Exp $

COMMENT=		module to submit songs to last.fm from MPD
DISTNAME=		Music-Audioscrobbler-MPD-0.13
REVISION=		0
CATEGORIES=		audio

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
CPAN_AUTHOR=		EALLENIII
MODCPAN_EXAMPLES=	Yes
USE_GROFF =	Yes

RUN_DEPENDS=		::audio/p5-Music-Audioscrobbler-Submit \
			::devel/p5-Proc-Daemon

post-configure:
	@rm -f ${WRKSRC}/examples/*.orig

.include <bsd.port.mk>
