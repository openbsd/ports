# $OpenBSD: Makefile,v 1.4 2007/10/04 21:23:41 jasper Exp $

COMMENT=	Perl IDN nameprep tools

DISTNAME=	Net-IDN-Nameprep-0.02
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	converters net
MODULES=	cpan

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=		MIYAGAWA

REGRESS_DEPENDS=	::converters/p5-Unicode-String

.include <bsd.port.mk>
