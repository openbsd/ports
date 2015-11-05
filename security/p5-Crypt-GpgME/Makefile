# $OpenBSD: Makefile,v 1.19 2015/11/05 19:08:59 jca Exp $

COMMENT=	Perl interface to gpgme
SHARED_ONLY=	Yes

DISTNAME=	Crypt-GpgME-0.09
REVISION=	3
CATEGORIES=	devel security

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c assuan gpg-error gpgme

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
