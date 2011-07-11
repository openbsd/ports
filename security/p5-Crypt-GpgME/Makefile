# $OpenBSD: Makefile,v 1.12 2011/07/11 18:02:16 landry Exp $

COMMENT=	Perl interface to gpgme
SHARED_ONLY=	Yes

DISTNAME=	Crypt-GpgME-0.08
REVISION=	2
CATEGORIES=	devel security
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	gpg-error gpgme

MODULES=	cpan devel/gettext

LIB_DEPENDS=	security/gpgme>=1.1.4

RUN_DEPENDS=	devel/p5-IO-stringy \
		devel/p5-Test-Exception \
		devel/p5-Test-MockModule
BUILD_DEPENDS=	sysutils/p5-File-Which \
		${RUN_DEPENDS}

.include <bsd.port.mk>
