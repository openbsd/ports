# $OpenBSD: Makefile,v 1.3 2010/09/15 13:52:11 sthen Exp $

COMMENT=	implements a flat filesystem

MODULES=	cpan

DISTNAME=	File-Flat-0.96
REVISION=	0
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-prefork \
			::devel/p5-File-NCopy \
			::devel/p5-File-Remove \
			::devel/p5-File-Slurp
BUILD_DEPENDS=		${RUN_DEPENDS}
REGRESS_DEPENDS=	::devel/p5-Test-ClassAPI

.include <bsd.port.mk>
