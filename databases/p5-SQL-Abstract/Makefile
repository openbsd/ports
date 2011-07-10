# $OpenBSD: Makefile,v 1.9 2011/07/10 12:02:24 jasper Exp $

COMMENT=	generate SQL from Perl data structures

MODULES=	cpan
DISTNAME=	SQL-Abstract-1.72
CATEGORIES=	databases
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ARGS+=--skipdeps

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Accessor-Grouped \
		devel/p5-Getopt-Long-Descriptive \
		devel/p5-Hash-Merge
REGRESS_DEPENDS=devel/p5-Test-Deep \
		devel/p5-Test-Exception \
		devel/p5-Test-Warn

.include <bsd.port.mk>
