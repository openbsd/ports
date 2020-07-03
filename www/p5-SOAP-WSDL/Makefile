# $OpenBSD: Makefile,v 1.6 2020/07/03 21:46:05 sthen Exp $

COMMENT=		SOAP with WSDL support

DISTNAME =		SOAP-WSDL-3.003
CATEGORIES=		www
REVISION =		0

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	example

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Class-Std-Fast \
			textproc/p5-Template \
			textproc/p5-XML-Parser \
			www/p5-libwww \
			www/p5-URI

.include <bsd.port.mk>
