# $OpenBSD: Makefile,v 1.6 2010/10/18 18:36:50 espie Exp $

COMMENT=		helper routines for writing Nagios plugins

DISTNAME=		Nagios-Plugin-0.33
REVISION=		0
CATEGORIES=		net
MODULES=		cpan
USE_GROFF =	Yes

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
