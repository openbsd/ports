# $OpenBSD: Makefile,v 1.4 2009/11/09 17:09:22 bernd Exp $

COMMENT=		helper routines for writing Nagios plugins

DISTNAME=		Nagios-Plugin-0.33
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		net
MODULES=		cpan

# same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=		TONVOON

RUN_DEPENDS=		::math/p5-Math-Calc-Units \
			::devel/p5-Class-Accessor \
			::devel/p5-Params-Validate \
			::devel/p5-Config-Tiny

.include <bsd.port.mk>
