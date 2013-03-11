# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:22 espie Exp $

COMMENT=	automate launching of fake mpd for testing purposes

DISTNAME=	Test-Corpus-Audio-MPD-1.110710
CATEGORIES=	devel audio

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-File-ShareDir \
			devel/p5-Path-Class \
			devel/p5-Readonly

.include <bsd.port.mk>
