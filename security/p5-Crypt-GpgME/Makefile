# $OpenBSD: Makefile,v 1.9 2010/11/20 17:22:44 espie Exp $

COMMENT=	Perl interface to gpgme
SHARED_ONLY=	Yes

MODULES=	cpan
DISTNAME=	Crypt-GpgME-0.08
REVISION=	0
CATEGORIES=	devel security
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	gpg-error iconv intl gpgme

LIB_DEPENDS=	security/gpgme>=1.1.4

RUN_DEPENDS=	devel/p5-IO-stringy \
		devel/p5-Test-Exception \
		devel/p5-Test-MockModule
BUILD_DEPENDS=	sysutils/p5-File-Which \
		${RUN_DEPENDS}

.include <bsd.port.mk>
