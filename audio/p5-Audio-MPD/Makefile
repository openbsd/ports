# $OpenBSD: Makefile,v 1.23 2011/04/20 19:52:00 jasper Exp $

COMMENT=		module for communicating with MPD servers
DISTNAME=		Audio-MPD-1.110560
REVISION=		0
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
CPAN_AUTHOR=		JQUELIN
MODCPAN_EXAMPLES=	Yes

CONFIGURE_STYLE=	modbuild
USE_GROFF =		Yes

RUN_DEPENDS=		audio/p5-Audio-MPD-Common>=1.110550 \
			devel/p5-MooseX-Has-Sugar \
			devel/p5-MooseX-SemiAffordanceAccessor>=0.09 \
			devel/p5-Class-Accessor \
			devel/p5-Getopt-Euclid \
			devel/p5-Proc-Daemon
REGRESS_DEPENDS=	devel/p5-Getopt-Euclid \
			devel/p5-Test-Corpus-Audio-MPD

.include <bsd.port.mk>
