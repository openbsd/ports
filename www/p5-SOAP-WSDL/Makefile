# $OpenBSD: Makefile,v 1.1.1.1 2010/12/22 20:25:22 jasper Exp $

COMMENT=		SOAP with WSDL support

DISTNAME=		SOAP-WSDL-2.00.10
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
