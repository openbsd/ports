# $OpenBSD: Makefile,v 1.4 2016/03/20 19:56:43 naddy Exp $

COMMENT=	regular expressions for handling British postcodes

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Geo-UK-Postcode-Regex-0.015
CATEGORIES=	geo

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

BUILD_DEPENDS=	devel/p5-File-ShareDir-Install
TEST_DEPENDS=	devel/p5-Test-Exception \
		devel/p5-Clone

CONFIGURE_STYLE= modbuild tiny

.include <bsd.port.mk>
