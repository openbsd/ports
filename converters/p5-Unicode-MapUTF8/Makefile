# $OpenBSD: Makefile,v 1.8 2007/01/30 01:20:23 msf Exp $

COMMENT=	"conversions to and from arbitrary character sets and UTF8"

DISTNAME=	Unicode-MapUTF8-1.11
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	converters
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::converters/p5-Jcode \
		::converters/p5-Unicode-Map \
		::converters/p5-Unicode-Map8

.include <bsd.port.mk>
