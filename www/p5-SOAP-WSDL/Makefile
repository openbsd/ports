# $OpenBSD: Makefile,v 1.2 2013/03/11 11:44:46 espie Exp $

COMMENT=		SOAP with WSDL support

DISTNAME=		SOAP-WSDL-2.00.10
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	example

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Class-Std-Fast \
			textproc/p5-Template \
			textproc/p5-XML-Parser \
			www/p5-libwww

.include <bsd.port.mk>
