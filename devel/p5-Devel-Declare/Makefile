# $OpenBSD: Makefile,v 1.2 2010/01/12 08:58:08 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		adding keywords to perl, in perl

DISTNAME=		Devel-Declare-0.005011

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

BUILD_DEPENDS=		::devel/p5-B-Hooks-OP-Check
RUN_DEPENDS=		::devel/p5-B-Hooks-OP-Check \
			::devel/p5-B-Hooks-EndOfScope \
			::devel/p5-Sub-Name

.include <bsd.port.mk>
