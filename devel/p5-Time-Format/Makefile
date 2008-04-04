# $OpenBSD: Makefile,v 1.3 2008/04/04 19:29:26 okan Exp $

COMMENT=		easy-to-use date/time formatting

DISTNAME=		Time-Format-1.07
CATEGORIES=		devel

MAINTAINER=		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
REGRESS_DEPENDS=	::converters/p5-DateManip \
			::devel/p5-DateTime

.include <bsd.port.mk>
