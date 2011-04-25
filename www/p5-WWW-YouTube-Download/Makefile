# $OpenBSD: Makefile,v 1.1.1.1 2011/04/25 13:04:17 todd Exp $

COMMENT =	simple YouTube interface for downloading videos

MODULES =	cpan
DISTNAME =	WWW-YouTube-Download-0.25
CATEGORIES =	www

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CPAN_AUTHOR =		XAICRON
CONFIGURE_STYLE =	modinst

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	eg

RUN_DEPENDS =	www/p5-libwww \
		www/p5-URI \
		converters/p5-JSON \
		www/p5-HTML-Parser

post-extract:
	find -d "${WRKDIST}" \
		-type d -name PaxHeader -exec rm -rf "{}" \;

.include <bsd.port.mk>
