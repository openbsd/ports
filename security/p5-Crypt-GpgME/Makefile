# $OpenBSD: Makefile,v 1.4 2008/10/02 20:39:33 simon Exp $

COMMENT=	Perl interface to gpgme
SHARED_ONLY=	Yes

MODULES=	cpan
DISTNAME=	Crypt-GpgME-0.04
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	devel security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	gpg-error iconv intl

LIB_DEPENDS=	gpgme:gpgme->=1.1.4:security/gpgme

RUN_DEPENDS=	::devel/p5-IO-stringy \
		::devel/p5-Test-Exception \
		::devel/p5-Test-MockModule
BUILD_DEPENDS=	::sysutils/p5-File-Which \
		${RUN_DEPENDS}

.include <bsd.port.mk>
