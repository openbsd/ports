# $OpenBSD: Makefile,v 1.23 2015/06/14 08:05:49 benoit Exp $

COMMENT=	module to obtain financial quotes from exchanges

MODULES=	cpan
DISTNAME=	Finance-Quote-1.37
CATEGORIES=	misc

HOMEPAGE=	http://finance-quote.sourceforge.net

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS=	converters/p5-JSON \
		devel/p5-DateTime \
		www/p5-LWP-Protocol-https \
		www/p5-HTML-TableExtract \
		www/p5-HTML-Tree \
		www/p5-libwww \
		www/p5-LWP-Protocol-https

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	Examples

# GPL
PERMIT_PACKAGE_CDROM=	Yes

# pod tests too many failures leave disabled
#MAKE_ENV +=	TEST_POD=Yes
#TEST_FLAGS =	TEST_AUTHOR=Tester
# uncomment for online checks, too many failures because of site changes, lot of downloads.
#TEST_FLAGS +=	ONLINE_TEST=true

.include <bsd.port.mk>
