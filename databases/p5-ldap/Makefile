# $OpenBSD: Makefile,v 1.15 2006/12/14 19:22:27 dassow Exp $

COMMENT=	"client interface to LDAP servers"

VERSION=	0.3202
DISTNAME=	perl-ldap-${VERSION}
PKGNAME=	p5-ldap-${VERSION}p2
CATEGORIES=	databases
MODULES=	cpan

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

HOMEPAGE=	http://ldap.perl.org/

RUN_DEPENDS=	:p5-Convert-ASN1->0.07:converters/p5-Convert-ASN1 \
		:p5-URI->=1.08:www/p5-URI \
		:p5-Authen-SASL->=2:security/p5-Authen-SASL \
		:p5-IO-Socket-SSL-*:security/p5-IO-Socket-SSL \
		:p5-XML-Parser-*:textproc/p5-XML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ENV+=	PERL_MM_USE_DEFAULT=Yes

.include <bsd.port.mk>
