# $OpenBSD: Makefile,v 1.3 2002/03/21 02:58:38 jcs Exp $

DISTNAME=	RadiusPerl-0.05
PKGNAME=	p5-Authen-Radius-0.05
CATEGORIES=	security perl
NEED_VERSION=	1.515

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"Perl module to authenticate against a RADIUS server"
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Authen

MAINTAINER=	Joshua Stein <jcs@rt.fm>

PERL_MODULES=	libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd
BUILD_DEPENDS=	::security/p5-MD5
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${PERL_MODULES}/Authen/
	${INSTALL_SCRIPT} ${WRKDIR}/${DISTNAME}/Authen/Radius.pm \
		${PREFIX}/${PERL_MODULES}/Authen/Radius.pm

.include <bsd.port.mk>
