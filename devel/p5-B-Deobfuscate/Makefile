# $OpenBSD: Makefile,v 1.12 2010/12/03 11:44:27 ajacoutot Exp $

COMMENT=	Perl module for use in de-obfuscating source code

MODULES=	cpan

DISTNAME=	B-Deobfuscate-0.20
REVISION=	0
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
