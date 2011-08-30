# $OpenBSD: Makefile,v 1.13 2011/08/30 07:03:17 jasper Exp $

COMMENT=	Perl interface to gpgme
SHARED_ONLY=	Yes

DISTNAME=	Crypt-GpgME-0.09
CATEGORIES=	devel security
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	assuan gpg-error gpgme

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
