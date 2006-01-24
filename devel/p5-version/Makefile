# $OpenBSD: Makefile,v 1.1.1.1 2006/01/24 07:29:11 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl extension for version objects"
DISTNAME=	version-0.53
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/J/JP/JPEACOCK/}

# same as perl
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

CONFIGURE_STYLE=	perl modbuild

PKG_ARCH= *

.include <bsd.port.mk>
