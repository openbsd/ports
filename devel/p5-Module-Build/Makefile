# $OpenBSD: Makefile,v 1.4 2006/03/20 21:30:34 msf Exp $

COMMENT=	"build and install Perl modules"

DISTNAME=	Module-Build-0.2611
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

do-regress:
	@cd ${WRKSRC} && /usr/bin/perl ${MODPERL_BUILD} ${REGRESS_TARGET}

PKG_ARCH=	*

.include <bsd.port.mk>
