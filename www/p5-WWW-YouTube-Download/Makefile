# $OpenBSD: Makefile,v 1.8 2013/03/11 11:44:47 espie Exp $

COMMENT =	simple YouTube interface for downloading videos

MODULES =	cpan
DISTNAME =	WWW-YouTube-Download-0.41
CATEGORIES =	www

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		XAICRON
CONFIGURE_STYLE =	modinst

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	eg

RUN_DEPENDS =	converters/p5-JSON \
		textproc/p5-XML-TreePP \
		www/p5-HTML-Parser \
		www/p5-URI \
		www/p5-libwww

.include <bsd.port.mk>
