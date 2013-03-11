# $OpenBSD: Makefile,v 1.11 2013/03/11 11:44:47 espie Exp $

COMMENT=	handy web browsing in a Perl object

MODULES=	cpan

DISTNAME=	WWW-Mechanize-1.71
CATEGORIES=	www perl5

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-libwww>=5.829 \
		devel/p5-Test-LongString \
		www/p5-HTTP-Server-Simple

TEST_DEPENDS= devel/p5-PadWalker \
		 devel/p5-Test-Exception \
		 devel/p5-Test-Memory-Cycle \
		 devel/p5-Test-Pod \
		 devel/p5-Test-Pod-Coverage \
		 devel/p5-Test-Taint \
		 devel/p5-Test-NoWarnings \
		 devel/p5-Test-Warn

.include <bsd.port.mk>
