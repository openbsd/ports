# $OpenBSD: Makefile,v 1.1.1.1 2006/11/04 18:24:37 espie Exp $

COMMENT= 	"read and modify Apache .htpasswd files"

DISTNAME=	Authen-Htpasswd-0.14
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Authen/}

RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::devel/p5-IO-LockedFile

REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage \
		::security/p5-Crypt-PasswdMD5

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=perl build

PKG_ARCH=	*

.include <bsd.port.mk>
