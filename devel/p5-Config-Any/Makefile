# $OpenBSD: Makefile,v 1.3 2006/12/25 13:40:28 simon Exp $

COMMENT=        "load various configuration file formats"

MODULES=	cpan
DISTNAME=	Config-Any-0.04
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=     devel

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=modbuild

RUN_DEPENDS=	::devel/p5-version

# All of these would be needed to parse all these configuration
# formats.
REGRESS_DEPENDS=::devel/p5-Config-Tiny \
		::converters/p5-JSON \
		::devel/p5-YAML \
		::devel/p5-Config-General \

.include <bsd.port.mk>
