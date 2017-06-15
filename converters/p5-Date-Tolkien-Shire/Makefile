# $OpenBSD: Makefile,v 1.14 2017/06/15 23:36:32 bcallah Exp $

COMMENT =	convert dates into the Shire Calendar

DISTNAME =	Date-Tolkien-Shire-1.901

CATEGORIES =	converters

MAINTAINER =	Brian Callahan <bcallah@devio.us>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

# It checks for this at build time.
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/p5-Date-Tolkien-Shire-Data

PKG_ARCH =		*

.include <bsd.port.mk>
