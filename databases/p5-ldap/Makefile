# $OpenBSD: Makefile,v 1.7 2002/07/30 10:27:45 shell Exp $

COMMENT=	"client interface to LDAP servers"

VERSION=	0.26
DISTNAME=	perl-ldap-${VERSION}
PKGNAME=	p5-ldap-${VERSION}
CATEGORIES=	databases perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

HOMEPAGE=	http://perl-ldap.sourceforge.net/

MAINTAINER=	Shell Hung <shell@openbsd.org>

BUILD_DEPENDS=	:p5-Convert-ASN1->0.07:converters/p5-Convert-ASN1 \
		:p5-URI->=1.08:www/p5-URI \
		:p5-IO-Socket-SSL-*:security/p5-IO-Socket-SSL \
		:p5-Digest-MD5-*:security/p5-Digest-MD5 \
		:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl
REGRESS_TARGET=	test

.include <bsd.port.mk>
