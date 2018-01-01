# $OpenBSD: Makefile,v 1.15 2018/01/01 18:11:46 bcallah Exp $

COMMENT =	convert dates into the Shire Calendar

DISTNAME =	Date-Tolkien-Shire-1.901
REVISION =	0

CATEGORIES =	converters

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

# It checks for this at build time.
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/p5-Date-Tolkien-Shire-Data

PKG_ARCH =		*

.include <bsd.port.mk>
