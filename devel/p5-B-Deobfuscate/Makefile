# $OpenBSD: Makefile,v 1.2 2006/11/25 16:32:33 espie Exp $

COMMENT=	"Perl module for use in de-obfuscating source code"

MODULES=	cpan
DISTNAME=	B-Deobfuscate-0.10
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-B-Keywords \
		::devel/p5-YAML

.include <bsd.port.mk>
