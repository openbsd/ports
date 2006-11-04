# $OpenBSD: Makefile,v 1.3 2006/11/04 15:47:48 aanriot Exp $

COMMENT=	"module to talk to a UPS via NUT (Network UPS Tools) upsd"

DISTNAME=	UPS-Nut-0.04
PKGNAME=        p5-${DISTNAME}
CATEGORIES=     sysutils perl5

MAINTAINER=     Alexandre Anriot <aanriot@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/K/KP/KPETERS/}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
