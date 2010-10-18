# $OpenBSD: Makefile,v 1.2 2010/10/18 17:48:07 espie Exp $

COMMENT=	automate launching of fake mpd for testing purposes

DISTNAME=	Test-Corpus-Audio-MPD-1.100500
CATEGORIES=	devel audio

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild
USE_GROFF =	Yes

RUN_DEPENDS=		::devel/p5-File-ShareDir \
			::devel/p5-Path-Class \
			::devel/p5-Readonly

.include <bsd.port.mk>
