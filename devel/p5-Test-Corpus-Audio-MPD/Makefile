# $OpenBSD: Makefile,v 1.5 2011/04/07 20:19:27 jasper Exp $

COMMENT=	automate launching of fake mpd for testing purposes

DISTNAME=	Test-Corpus-Audio-MPD-1.110710
CATEGORIES=	devel audio

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-File-ShareDir \
			devel/p5-Path-Class \
			devel/p5-Readonly

.include <bsd.port.mk>
