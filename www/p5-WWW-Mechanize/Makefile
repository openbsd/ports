# $OpenBSD: Makefile,v 1.10 2011/12/17 19:53:05 sthen Exp $

COMMENT=	handy web browsing in a Perl object

MODULES=	cpan

DISTNAME=	WWW-Mechanize-1.71
CATEGORIES=	www perl5

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-libwww>=5.829 \
		devel/p5-Test-LongString \
		www/p5-HTTP-Server-Simple

REGRESS_DEPENDS= devel/p5-PadWalker \
		 devel/p5-Test-Exception \
		 devel/p5-Test-Memory-Cycle \
		 devel/p5-Test-Pod \
		 devel/p5-Test-Pod-Coverage \
		 devel/p5-Test-Taint \
		 devel/p5-Test-NoWarnings \
		 devel/p5-Test-Warn

.include <bsd.port.mk>
