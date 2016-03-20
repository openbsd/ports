# $OpenBSD: Makefile,v 1.12 2016/03/20 19:57:23 naddy Exp $

COMMENT =	simple YouTube interface for downloading videos

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	WWW-YouTube-Download-0.56
CATEGORIES =	www

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		XAICRON
CONFIGURE_STYLE =	modbuild

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	eg

RUN_DEPENDS =	converters/p5-JSON \
		textproc/p5-XML-TreePP \
		www/p5-LWP-Protocol-https \
		www/p5-LWP-Protocol-socks \
		www/p5-HTML-Parser \
		www/p5-URI \
		www/p5-libwww

BUILD_DEPENDS = ${RUN_DEPENDS}

.include <bsd.port.mk>
