# $OpenBSD: Makefile,v 1.33 2013/03/11 02:52:07 espie Exp $

COMMENT=	client interface to LDAP servers

VERSION=	0.4001
DISTNAME=	perl-ldap-${VERSION}
PKGNAME=	p5-ldap-${VERSION}
REVISION= 	1
CATEGORIES=	databases
MODULES=	cpan
USE_GROFF =	Yes

CPAN_AUTHOR=	GBARR

HOMEPAGE=	http://ldap.perl.org/

RUN_DEPENDS=	converters/p5-Convert-ASN1 \
		security/p5-Authen-SASL \
		security/p5-IO-Socket-SSL \
		textproc/p5-XML-Parser \
		textproc/p5-XML-SAX-Writer \
		www/p5-URI
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=databases/openldap,-server

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modinst

pre-test:
	${SUBST_CMD} ${WRKSRC}/test.cfg

.include <bsd.port.mk>
