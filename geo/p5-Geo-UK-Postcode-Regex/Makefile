# $OpenBSD: Makefile,v 1.3 2016/03/11 13:13:19 nigel Exp $

COMMENT=	regular expressions for handling British postcodes

MODULES=	cpan
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
