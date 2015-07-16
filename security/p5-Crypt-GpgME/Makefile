# $OpenBSD: Makefile,v 1.18 2015/07/16 23:57:26 ajacoutot Exp $

COMMENT=	Perl interface to gpgme
SHARED_ONLY=	Yes

DISTNAME=	Crypt-GpgME-0.09
REVISION=	2
CATEGORIES=	devel security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

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
