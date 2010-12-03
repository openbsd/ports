# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:22 ajacoutot Exp $

COMMENT=		module providing routines to submit songs to last.fm

DISTNAME=		Music-Audioscrobbler-Submit-0.05
REVISION=		0
CATEGORIES=		audio

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
CPAN_AUTHOR=		EALLENIII
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-Config-Options \
			www/p5-libwww

.include <bsd.port.mk>
