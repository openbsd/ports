# $OpenBSD: Makefile,v 1.6 2007/05/05 17:44:51 simon Exp $

COMMENT= 	"read and modify Apache .htpasswd files"

DISTNAME=	Authen-Htpasswd-0.15
PKGNAME=	p5-${DISTNAME}p0
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

REGRESS_DEPENDS=::security/p5-Crypt-PasswdMD5

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
