# $OpenBSD: Makefile,v 1.1.1.1 2011/03/16 14:23:43 jasper Exp $

COMMENT=		interface to XML based eBay API

DISTNAME=		Net-eBay-0.54
CATEGORIES=		net

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
MODCPAN_EXAMPLES=	Yes

USE_GROFF=		Yes

RUN_DEPENDS=		devel/p5-DateTime-Precise \
			security/p5-Crypt-SSLeay \
			security/p5-Net_SSLeay \
			textproc/p5-Text-Format \
			textproc/p5-XML-Dumper \
			textproc/p5-XML-Simple \
			www/p5-HTML-Format \
			www/p5-HTML-PrettyPrinter \
			www/p5-HTML-Tree \
			www/p5-libwww

# Help MODCPAN_EXAMPLES a bit.
post-extract:
	@cd ${WRKSRC} && mkdir examples/ && mv ebay-*.pl examples/

.include <bsd.port.mk>
