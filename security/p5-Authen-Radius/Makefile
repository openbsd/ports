# $OpenBSD: Makefile,v 1.7 2002/10/28 16:30:34 naddy Exp $

DISTNAME=	RadiusPerl-0.05
PKGNAME=	p5-Authen-Radius-0.05
CATEGORIES=	security perl5

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"Perl module to authenticate against a RADIUS server"
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Authen/}

MAINTAINER=	Joshua Stein <jcs@rt.fm>

BUILD_DEPENDS=	:p5-MD5->=1.7:security/p5-MD5
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

REGRESS_IS_INTERACTIVE=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${P5SITE}/Authen/
	${INSTALL_SCRIPT} ${WRKDIR}/${DISTNAME}/Authen/Radius.pm \
		${PREFIX}/${P5SITE}/Authen/Radius.pm

.include <bsd.port.mk>
