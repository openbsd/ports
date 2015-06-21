# $OpenBSD: Makefile,v 1.8 2015/06/21 22:15:37 benoit Exp $

COMMENT =	simple perl web app framework

MODULES =	cpan
DISTNAME =	Dancer-1.3138
CATEGORIES =	www

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS = 	devel/p5-Hash-Merge-Simple \
		devel/p5-Try-Tiny \
		devel/p5-Module-Runtime \
		mail/p5-MIME-Types \
		www/p5-HTTP-Body \
		www/p5-HTTP-Server-Simple-PSGI

TEST_DEPENDS +=	converters/p5-JSON \
	 	devel/p5-Clone \
		devel/p5-Test-Output \
		devel/p5-YAML \
		net/p5-Test-TCP \
		textproc/p5-Template \
	 	www/p5-Plack

.include <bsd.port.mk>
