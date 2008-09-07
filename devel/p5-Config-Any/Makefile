# $OpenBSD: Makefile,v 1.9 2008/09/07 08:58:08 simon Exp $

COMMENT=	load various configuration file formats

MODULES=	cpan
DISTNAME=	Config-Any-0.14
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-version \
		::devel/p5-Module-Pluggable
BUILD_DEPENDS=	${RUN_DEPENDS}

# All of these would be needed to parse all these configuration
# formats.
REGRESS_DEPENDS=::devel/p5-Config-Tiny \
		::converters/p5-JSON \
		::devel/p5-YAML \
		::devel/p5-Config-General

.include <bsd.port.mk>
