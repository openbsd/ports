COMMENT=	Perl interface to the Registration Data Access Protocol

MODULES=	cpan
PKGNAME=	rdapper-1.19
DISTNAME=	App-${PKGNAME}
CATEGORIES=	net
PKG_ARCH=	*

# BSD
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	devel/p5-File-ShareDir-Install

RUN_DEPENDS=	devel/p5-File-ShareDir \
		converters/p5-JSON \
		devel/p5-Locale-Maketext-Gettext \
		net/p5-Net-ASN \
		net/p5-Net-DNS \
		converters/p5-Net-IDN-Encode \
		net/p5-Net-IP \
		net/p5-Net-RDAP \
		devel/p5-Term-Size \
		www/p5-URI

.include <bsd.port.mk>
