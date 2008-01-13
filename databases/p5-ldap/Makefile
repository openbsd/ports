# $OpenBSD: Makefile,v 1.18 2008/01/13 16:27:29 merdely Exp $

COMMENT=	client interface to LDAP servers

VERSION=	0.34
DISTNAME=	perl-ldap-${VERSION}
PKGNAME=	p5-ldap-${VERSION}
CATEGORIES=	databases
MODULES=	cpan

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

HOMEPAGE=	http://ldap.perl.org/

RUN_DEPENDS=	::converters/p5-Convert-ASN1 \
		::security/p5-Authen-SASL \
		::security/p5-IO-Socket-SSL \
		::textproc/p5-XML-Parser \
		::textproc/p5-XML-SAX-Writer \
		::www/p5-URI
BUILD_DEPENDS=	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ENV+=	PERL_MM_USE_DEFAULT=Yes

.include <bsd.port.mk>
