# $OpenBSD: Makefile,v 1.1.1.1 2006/11/04 14:45:56 espie Exp $

COMMENT=        "load various configuration file formats"

DISTNAME=	Config-Any-0.04
PKGNAME=	p5-${DISTNAME}
CATEGORIES=     devel perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Same as perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Config/}

CONFIGURE_STYLE=perl modbuild

RUN_DEPENDS=	::devel/p5-version

# All of these would be needed to parse all these configuration
# formats.
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Config-Tiny \
		::converters/p5-JSON \
		::devel/p5-YAML \
		::devel/p5-Config-General \

PKG_ARCH=	*

.include <bsd.port.mk>
