# $OpenBSD: Makefile,v 1.16 2018/05/15 11:05:43 espie Exp $

COMMENT =	convert dates into the Shire Calendar

DISTNAME =	Date-Tolkien-Shire-1.901
REVISION =	1

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
