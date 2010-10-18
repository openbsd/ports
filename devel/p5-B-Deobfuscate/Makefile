# $OpenBSD: Makefile,v 1.9 2010/10/18 17:47:55 espie Exp $

COMMENT=	Perl module for use in de-obfuscating source code

MODULES=	cpan

DISTNAME=	B-Deobfuscate-0.18
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV+=	TEST_POD=Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-B-Keywords \
		::devel/p5-YAML

.include <bsd.port.mk>
