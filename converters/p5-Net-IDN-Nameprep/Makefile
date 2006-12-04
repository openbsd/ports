# $OpenBSD: Makefile,v 1.2 2006/12/04 21:49:38 steven Exp $

COMMENT=	"Perl IDN nameprep tools"

DISTNAME=	Net-IDN-Nameprep-0.02
CATEGORIES=	net
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
