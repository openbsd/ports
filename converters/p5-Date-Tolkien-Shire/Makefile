# $OpenBSD: Makefile,v 1.18 2019/07/25 16:03:53 bcallah Exp $

COMMENT =	convert dates into the Shire Calendar

DISTNAME =	Date-Tolkien-Shire-1.902

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
