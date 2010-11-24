# $OpenBSD: Makefile,v 1.11 2010/11/24 15:52:04 jasper Exp $

COMMENT=	Perl module for use in de-obfuscating source code

MODULES=	cpan

DISTNAME=	B-Deobfuscate-0.20
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV+=	TEST_POD=Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-B-Keywords \
		devel/p5-IPC-Run \
		devel/p5-YAML

.include <bsd.port.mk>
