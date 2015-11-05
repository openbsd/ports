# $OpenBSD: Makefile,v 1.15 2015/11/05 19:08:59 jca Exp $

COMMENT= 	read and modify Apache .htpasswd files

DISTNAME=	Authen-Htpasswd-0.161
REVISION=	1
CATEGORIES=	security

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	devel/p5-Class-Accessor \
		devel/p5-IO-LockedFile

TEST_DEPENDS=security/p5-Crypt-PasswdMD5 \
		security/p5-Digest-SHA1

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
