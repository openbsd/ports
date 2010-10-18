# $OpenBSD: Makefile,v 1.3 2010/10/18 17:48:07 espie Exp $

COMMENT=		Readline Library Wrapper for zoid

MODULES=		cpan
DISTNAME=		Term-ReadLine-Zoid-0.07
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild
USE_GROFF =	Yes

RUN_DEPENDS=		::devel/p5-Term-ReadKey

.include <bsd.port.mk>
