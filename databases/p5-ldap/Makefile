# $OpenBSD: Makefile,v 1.32 2011/04/13 17:44:37 jasper Exp $

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

REGRESS_DEPENDS=databases/openldap,-server

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modinst

pre-regress:
	${SUBST_CMD} ${WRKSRC}/test.cfg

.include <bsd.port.mk>
