# $OpenBSD: Makefile,v 1.5 2002/12/29 21:14:11 fgsch Exp $

COMMENT=		"alternative Perl interface to ping(1)"

DISTNAME=		Net-Ping-External-0.06
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		net

MAINTAINER=		Heikki Korpela <heko@openbsd.org>

# License: Artistic / GPL.

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Net/}

CONFIGURE_STYLE=	perl

REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
