# $OpenBSD: Makefile,v 1.1.1.1 2007/01/17 14:13:36 bluhm Exp $

COMMENT=		"easy-to-use date/time formatting"

DISTNAME=		Time-Format-1.02
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

PKG_ARCH=		*

.include <bsd.port.mk>
