COMMENT =	database of robots.txt-derived permissions

DISTNAME =	WWW-RobotRules-6.03
CPAN_AUTHOR =	OALDERS

CATEGORIES =	www

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		www/p5-URI>=1.10

PKG_ARCH =		*

post-extract:
	# DB_File does not compile and is not used
	rm -- ${WRKSRC}/lib/WWW/RobotRules/DB_File.pm

.include <bsd.port.mk>
