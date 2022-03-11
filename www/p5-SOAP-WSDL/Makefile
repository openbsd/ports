COMMENT=		SOAP with WSDL support

DISTNAME =		SOAP-WSDL-3.004
CATEGORIES=		www

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	example

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Class-Std-Fast \
			devel/p5-Class-Load \
			textproc/p5-Template \
			textproc/p5-XML-Parser \
			www/p5-libwww \
			www/p5-URI

.include <bsd.port.mk>
