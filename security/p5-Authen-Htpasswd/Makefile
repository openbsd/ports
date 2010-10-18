# $OpenBSD: Makefile,v 1.10 2010/10/18 21:41:46 espie Exp $

COMMENT= 	read and modify Apache .htpasswd files

DISTNAME=	Authen-Htpasswd-0.161
CATEGORIES=	security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::devel/p5-IO-LockedFile

REGRESS_DEPENDS=::security/p5-Crypt-PasswdMD5 \
		::security/p5-Digest-SHA1

USE_GROFF =	Yes
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
