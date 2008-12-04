# $OpenBSD: Makefile,v 1.9 2008/12/04 00:07:14 simon Exp $

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

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
