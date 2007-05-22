# $OpenBSD: Makefile,v 1.8 2007/05/22 19:05:46 simon Exp $

COMMENT=	"build and install Perl modules"

MODULES=	cpan
DISTNAME=	Module-Build-0.2806
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


CONFIGURE_STYLE=modbuild

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::archivers/p5-Archive-Tar \
		::devel/p5-ExtUtils-ParseXS \
		::devel/p5-YAML \
		::devel/p5-version

do-regress:
	@cd ${WRKSRC} && /usr/bin/perl ${MODPERL_BUILD} ${REGRESS_TARGET}

.include <bsd.port.mk>
