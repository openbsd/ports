# $OpenBSD: Makefile,v 1.38 2013/08/10 08:44:08 rpe Exp $

COMMENT=	library for WWW access in Perl

MODULES=	cpan
DISTNAME=	libwww-perl-5.837
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-URI>1.10 \
		www/p5-HTML-Parser>=3.33 \
		www/p5-HTML-Tagset \
		p5-Crypt-SSLeay-*|p5-IO-Socket-SSL-*:security/p5-Crypt-SSLeay \
		www/p5-HTTP-GHTTP
BUILD_DEPENDS=	${RUN_DEPENDS}

CPAN_AUTHOR=	GAAS

.include <bsd.port.mk>
