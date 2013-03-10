# $OpenBSD: Makefile,v 1.24 2013/03/10 22:55:04 espie Exp $

COMMENT=		module for communicating with MPD servers
DISTNAME=		Audio-MPD-1.110560
REVISION=		0
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

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
TEST_DEPENDS=		devel/p5-Getopt-Euclid \
			devel/p5-Test-Corpus-Audio-MPD

.include <bsd.port.mk>
