# $OpenBSD: Makefile,v 1.7 2010/11/22 08:36:52 espie Exp $

COMMENT= 	handy web browsing in a Perl object

MODULES=	cpan

DISTNAME=	WWW-Mechanize-1.60
REVISION=	0
CATEGORIES=	www perl5
USE_GROFF =	Yes

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-libwww>=5.78 \
		devel/p5-Test-LongString \
		www/p5-HTTP-Server-Simple

REGRESS_DEPENDS= devel/p5-PadWalker \
		 devel/p5-Test-Memory-Cycle \
		 devel/p5-Test-Pod \
		 devel/p5-Test-Pod-Coverage \
		 devel/p5-Test-Taint \
		 devel/p5-Test-Warn

.include <bsd.port.mk>
