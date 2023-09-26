COMMENT=	return 'I am not here' indication stored in a LDAP tree

DISTNAME=	ldapvacation-1.1.3
REVISION=	6

CATEGORIES=	mail

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c pthread ldap lber

SITES=		https://spacehopper.org/mirrors/
EXTRACT_SUFX=	.tgz

NO_TEST=	Yes

LIB_DEPENDS=	databases/openldap

FAKE_FLAGS=	BINDIR=${PREFIX}/bin \
		MANDIR=${PREFIX}/man/man \
		SPATH=${PREFIX}/share/examples/ldapvacation

post-install:
	chmod a+r ${PREFIX}/share/examples/ldapvacation/ldapvacation.conf

.include <bsd.port.mk>
