# $OpenBSD: Makefile,v 1.38 2019/07/12 20:43:58 sthen Exp $

COMMENT=	client interface to LDAP servers

VERSION=	0.65
EPOCH=		0
DISTNAME=	perl-ldap-${VERSION}
PKGNAME=	p5-ldap-${VERSION}
CATEGORIES=	databases
MODULES=	cpan
PKG_ARCH=	*

CPAN_AUTHOR=	MARSCHAP

HOMEPAGE=	http://ldap.perl.org/

RUN_DEPENDS=	converters/p5-Convert-ASN1 \
		net/p5-IO-Socket-INET6 \
		security/p5-Authen-SASL \
		security/p5-IO-Socket-SSL \
		textproc/p5-XML-Parser \
		textproc/p5-XML-SAX-Writer \
		www/p5-URI
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=databases/openldap,-server

# Perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	modinst

pre-test:
	${SUBST_CMD} ${WRKSRC}/test.cfg

.include <bsd.port.mk>
