# $OpenBSD: Makefile,v 1.22 2018/04/14 10:14:05 rsadowski Exp $

COMMENT=	Perl interface to gpgme

DISTNAME=	Crypt-GpgME-0.09
REVISION=	5
CATEGORIES=	devel security

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  assuan c gpg-error gpgme iconv intl perl

MODULES=	cpan

CPAN_AUTHOR=	FLORA

LIB_DEPENDS=	security/gpgme>=1.1.4

RUN_DEPENDS=	devel/p5-IO-stringy \
		devel/p5-Test-Exception \
		devel/p5-Test-MockModule
BUILD_DEPENDS=	sysutils/p5-File-Which \
		${RUN_DEPENDS}

.include <bsd.port.mk>
