# $OpenBSD: Makefile,v 1.17 2010/12/03 11:44:28 ajacoutot Exp $

COMMENT=	load various configuration file formats

MODULES=	cpan
DISTNAME=	Config-Any-0.16
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# All of these would be needed to parse all these configuration
# formats.
REGRESS_DEPENDS=devel/p5-Config-Tiny \
		converters/p5-JSON \
		devel/p5-YAML \
		devel/p5-Config-General

.include <bsd.port.mk>
