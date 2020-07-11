# $OpenBSD: Makefile,v 1.8 2020/07/11 22:54:35 sthen Exp $

COMMENT=	regular expressions for handling British postcodes

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Geo-UK-Postcode-Regex-0.017
CATEGORIES=	geo
REVISION=	1

# Perl
PERMIT_PACKAGE=	Yes

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

BUILD_DEPENDS=	devel/p5-File-ShareDir-Install
TEST_DEPENDS=	devel/p5-Test-Exception \
		devel/p5-Clone

CONFIGURE_STYLE= modbuild tiny

.include <bsd.port.mk>
