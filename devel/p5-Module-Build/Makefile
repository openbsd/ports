# $OpenBSD: Makefile,v 1.13 2008/09/29 22:54:15 simon Exp $

COMMENT=	build and install Perl modules
COMES_WITH=	4.5

MODULES=	cpan
DISTNAME=	Module-Build-0.2808
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
RUN_DEPENDS=	::devel/p5-ExtUtils-ParseXS \
		::devel/p5-YAML
REGRESS_DEPENDS=::devel/p5-version

do-regress:
	@cd ${WRKSRC} && /usr/bin/perl ${MODPERL_BUILD} ${REGRESS_TARGET}

.include <bsd.port.mk>
