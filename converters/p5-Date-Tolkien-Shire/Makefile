# $OpenBSD: Makefile,v 1.21 2021/08/25 13:59:34 bcallah Exp $

COMMENT =	convert dates into the Shire Calendar

DISTNAME =	Date-Tolkien-Shire-1.905

CATEGORIES =	converters

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

# It checks for this at build time.
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/p5-Date-Tolkien-Shire-Data

PKG_ARCH =		*

.include <bsd.port.mk>
