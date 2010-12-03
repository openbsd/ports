# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:22 ajacoutot Exp $

COMMENT=		module to submit songs to last.fm from MPD
DISTNAME=		Music-Audioscrobbler-MPD-0.13
REVISION=		1
CATEGORIES=		audio

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
CPAN_AUTHOR=		EALLENIII
MODCPAN_EXAMPLES=	Yes
USE_GROFF =		Yes

RUN_DEPENDS=		audio/p5-Music-Audioscrobbler-Submit \
			devel/p5-Proc-Daemon

post-configure:
	@rm -f ${WRKSRC}/examples/*.orig

.include <bsd.port.mk>
