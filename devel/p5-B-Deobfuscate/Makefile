# $OpenBSD: Makefile,v 1.4 2007/04/25 01:12:50 msf Exp $

COMMENT=	"Perl module for use in de-obfuscating source code"

MODULES=	cpan

DISTNAME=	B-Deobfuscate-0.18
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

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
