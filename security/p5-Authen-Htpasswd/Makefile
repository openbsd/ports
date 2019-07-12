# $OpenBSD: Makefile,v 1.17 2019/07/12 20:49:06 sthen Exp $

COMMENT= 	read and modify Apache .htpasswd files

DISTNAME=	Authen-Htpasswd-0.161
REVISION=	1
CATEGORIES=	security

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	devel/p5-Class-Accessor \
		devel/p5-IO-LockedFile

TEST_DEPENDS=security/p5-Crypt-PasswdMD5 \
		security/p5-Digest-SHA1

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
