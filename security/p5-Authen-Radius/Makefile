# $OpenBSD: Makefile,v 1.17 2013/03/11 11:41:26 espie Exp $

COMMENT=	Perl module to authenticate against a RADIUS server

MODULES=	cpan
DISTNAME=	RadiusPerl-0.15
REVISION=	0
PKGNAME=	p5-Authen-Radius-0.15
CATEGORIES=	security

MAINTAINER=	Abel Abraham Camarillo Ojeda <acamari@the00z.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Authen/}
WRKDIST=	${WRKDIR}/${DISTNAME:S/RadiusPerl/Authen-Radius/}

RUN_DEPENDS=	security/p5-MD5>=1.7 \
		devel/p5-Data-HexDump>=0.02
BUILD_DEPENDS=	${RUN_DEPENDS}

USE_GROFF =	Yes
TEST_IS_INTERACTIVE=	Yes

pre-configure:
	perl -pi -e \
	    s,/etc/raddb,${WRKINST}/${PREFIX}/share/examples/p5-Authen-Radius, \
	    ${WRKSRC}/install-radius-db.PL

do-regress:
	cd ${WRKSRC} && ${MAKE} test

.include <bsd.port.mk>
