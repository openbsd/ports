# $OpenBSD: Makefile,v 1.14 2010/07/13 19:46:11 sthen Exp $

COMMENT=	load various configuration file formats

MODULES=	cpan
DISTNAME=	Config-Any-0.16
REVISION=	0
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# All of these would be needed to parse all these configuration
# formats.
REGRESS_DEPENDS=::devel/p5-Config-Tiny \
		::converters/p5-JSON \
		::devel/p5-YAML \
		::devel/p5-Config-General

.include <bsd.port.mk>
