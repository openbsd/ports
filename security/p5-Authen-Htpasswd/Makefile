# $OpenBSD: Makefile,v 1.5 2007/02/03 19:10:39 simon Exp $

COMMENT= 	"read and modify Apache .htpasswd files"

DISTNAME=	Authen-Htpasswd-0.15
CATEGORIES=	security

MAINTAINER=	Simon Dassow <simon@openbsd.org>

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
