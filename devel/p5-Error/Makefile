# $OpenBSD: Makefile,v 1.12 2012/05/14 05:02:42 rpointel Exp $

COMMENT=	error/exception handling in an OO-ish way

MODULES=	cpan
DISTNAME=	Error-0.17018
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

MODCPAN_EXAMPLES=	Yes

REGRESS_DEPENDS =	devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
