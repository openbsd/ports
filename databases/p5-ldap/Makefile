# $OpenBSD: Makefile,v 1.4 2002/05/13 18:50:38 espie Exp $

COMMENT=	"client interface to LDAP servers"

VERSION=	0.25
DISTNAME=	perl-ldap-${VERSION}
PKGNAME=	p5-ldap-${VERSION}
CATEGORIES=	databases perl5
NEED_VERSION=	1.515

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

HOMEPAGE=	http://perl-ldap.sourceforge.net/

MAINTAINER=	Shell Hung <shell@openbsd.org>

BUILD_DEPENDS=	::converters/p5-Convert-ASN1	\
		::www/p5-URI			\
		::security/p5-IO-Socket-SSL	\
		::security/p5-Digest-MD5	\
		::textproc/p5-XML-Parser
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl
REGRESS_TARGET=	test

.include <bsd.port.mk>
