# $OpenBSD: Makefile,v 1.1.1.1 2006/06/20 12:26:30 bernd Exp $

COMMENT=		"helper routines for writing Nagios plugins"

DISTNAME=		Nagios-Plugin-0.12
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		net perl5

MAINTAINER=		Bernd Ahlers <bernd@openbsd.org>

# same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=../by-authors/id/T/TO/TONVOON/}

CONFIGURE_STYLE=	perl
PKG_ARCH=		*

.include <bsd.port.mk>
