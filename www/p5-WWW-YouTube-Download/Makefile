# $OpenBSD: Makefile,v 1.5 2012/01/24 00:44:47 nigel Exp $

COMMENT =	simple YouTube interface for downloading videos

MODULES =	cpan
DISTNAME =	WWW-YouTube-Download-0.40
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

RUN_DEPENDS =	converters/p5-JSON \
		textproc/p5-XML-TreePP \
		www/p5-HTML-Parser \
		www/p5-URI \
		www/p5-libwww

.include <bsd.port.mk>
