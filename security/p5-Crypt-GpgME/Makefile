# $OpenBSD: Makefile,v 1.15 2013/03/11 11:41:26 espie Exp $

COMMENT=	Perl interface to gpgme
SHARED_ONLY=	Yes

DISTNAME=	Crypt-GpgME-0.09
REVISION=	0
CATEGORIES=	devel security
USE_GROFF =	Yes

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
