# $OpenBSD: Makefile,v 1.11 2007/01/15 17:40:09 simon Exp $

COMMENT=	"Perl module to authenticate against a RADIUS server"

MODULES=	cpan
DISTNAME=	RadiusPerl-0.05
PKGNAME=	p5-Authen-Radius-0.05p1
CATEGORIES=	security

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Authen/}

RUN_DEPENDS=	:p5-MD5->=1.7:security/p5-MD5
BUILD_DEPENDS=	${RUN_DEPENDS}

REGRESS_IS_INTERACTIVE=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${P5SITE}/Authen/
	${INSTALL_SCRIPT} ${WRKDIR}/${DISTNAME}/Authen/Radius.pm \
		${PREFIX}/${P5SITE}/Authen/Radius.pm

.include <bsd.port.mk>
