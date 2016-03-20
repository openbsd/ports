# $OpenBSD: Makefile,v 1.20 2016/03/20 19:56:59 naddy Exp $

COMMENT=	Perl interface to gpgme

DISTNAME=	Crypt-GpgME-0.09
REVISION=	3
CATEGORIES=	devel security

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c assuan gpg-error gpgme perl

MODULES=	cpan \
		devel/gettext

CPAN_AUTHOR=	FLORA

LIB_DEPENDS=	security/gpgme>=1.1.4

RUN_DEPENDS=	devel/p5-IO-stringy \
		devel/p5-Test-Exception \
		devel/p5-Test-MockModule
BUILD_DEPENDS=	sysutils/p5-File-Which \
		${RUN_DEPENDS}

.include <bsd.port.mk>
