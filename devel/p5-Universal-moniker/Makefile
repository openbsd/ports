# $OpenBSD: Makefile,v 1.6 2010/10/18 17:48:10 espie Exp $

COMMENT=	Perl module for aliasing class names

MODULES=	cpan
DISTNAME=	UNIVERSAL-moniker-0.08
PKGNAME=	p5-Universal-moniker-0.08
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::textproc/p5-Lingua-EN-Inflect

.include <bsd.port.mk>
