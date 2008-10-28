# $OpenBSD: Makefile,v 1.23 2008/10/28 12:27:17 pea Exp $

COMMENT=	client interface to LDAP servers

VERSION=	0.39
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

REGRESS_DEPENDS=:openldap-server-*:databases/openldap,-server

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ENV+=	PERL_MM_USE_DEFAULT=Yes

pre-regress:
	${SUBST_CMD} ${WRKSRC}/test.cfg

.include <bsd.port.mk>
