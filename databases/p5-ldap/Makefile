# $OpenBSD: Makefile,v 1.1.1.1 2001/10/24 17:18:37 shell Exp $

COMMENT=	"client interface to LDAP servers"

VERSION=	0.2401
DISTNAME=	perl-ldap-${VERSION}
PKGNAME=	p5-ldap-${VERSION}
CATEGORIES=	databases perl5
NEED_VERSION=	1.482

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Net

HOMEPAGE=	http://perl-ldap.sourceforge.net/

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	${LOCALBASE}/Convert/ASN1.pm::converters/p5-Convert-ASN1	\
		${LOCALBASE}/URI.pm::www/p5-URI					\
		${LOCALBASE}/IO/Socket/SSL.pm::security/p5-IO-Socket-SSL	\
		${LOCALBASE}/${MACHINE_ARCH}-openbsd/MD5.pm::security/p5-Digest-MD5	\
		${LOCALBASE}/${MACHINE_ARCH}-openbsd/XML/Parser.pm::textproc/p5-XML-Parser
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
