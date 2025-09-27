COMMENT=	Perl interface to the Registration Data Access Protocol

MODULES=	cpan
PKGNAME=	rdapper-1.18
REVISION=	0
DISTNAME=	App-${PKGNAME}
CATEGORIES=	net
PKG_ARCH=	*

# BSD
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	devel/p5-File-ShareDir-Install

RUN_DEPENDS=	converters/p5-JSON \
		converters/p5-Net-IDN-Encode \
		devel/p5-File-ShareDir \
		devel/p5-Locale-Maketext-Gettext \
		devel/p5-Term-Size \
		net/p5-Net-ASN \
		net/p5-Net-DNS \
		net/p5-Net-IP \
		net/p5-Net-RDAP \
		textproc/p5-PPI \
		www/p5-URI

.include <bsd.port.mk>
