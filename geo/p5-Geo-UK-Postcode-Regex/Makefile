# $OpenBSD: Makefile,v 1.6 2019/06/03 16:06:51 sthen Exp $

COMMENT=	regular expressions for handling British postcodes

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Geo-UK-Postcode-Regex-0.017
CATEGORIES=	geo

# Perl
PERMIT_PACKAGE=	Yes

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

BUILD_DEPENDS=	devel/p5-File-ShareDir-Install
TEST_DEPENDS=	devel/p5-Test-Exception \
		devel/p5-Clone

CONFIGURE_STYLE= modbuild tiny

.include <bsd.port.mk>
