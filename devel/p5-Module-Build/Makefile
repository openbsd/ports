# $OpenBSD: Makefile,v 1.2 2004/12/21 01:51:59 msf Exp $

COMMENT=	"build and install Perl modules"

V=		0.2607
DISTNAME=	Module-Build-${V}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Module/}

CONFIGURE_STYLE= perl modbuild

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::archivers/p5-Archive-Tar \
		::devel/p5-ExtUtils-ParseXS \
		::devel/p5-YAML

PKG_ARCH=	*

.include <bsd.port.mk>
