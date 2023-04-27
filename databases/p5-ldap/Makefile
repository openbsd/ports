COMMENT =	client interface to LDAP servers

VERSION =	0.68
REVISION =	0
EPOCH =		0
DISTNAME =	perl-ldap-${VERSION}
PKGNAME =	p5-ldap-${VERSION}
CPAN_AUTHOR =	MARSCHAP

CATEGORIES =	databases

HOMEPAGE =	http://ldap.perl.org/

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		converters/p5-Convert-ASN1>=0.20 \
			net/p5-IO-Socket-INET6 \
			security/p5-Authen-SASL>=2.00 \
			security/p5-IO-Socket-SSL>=1.26 \
			textproc/p5-XML-Parser \
			textproc/p5-XML-SAX-Writer \
			www/p5-URI>=1.10
TEST_DEPENDS =		databases/openldap,-server \
			textproc/p5-Text-Soundex

CONFIGURE_STYLE =	modinst

PKG_ARCH =		*

pre-test:
	${SUBST_CMD} ${WRKSRC}/test.cfg

.include <bsd.port.mk>
