# $OpenBSD: Makefile,v 1.18 2014/01/23 16:56:15 ajacoutot Exp $

COMMENT=	return 'I am not here' indication stored in a LDAP tree

DISTNAME=	ldapvacation-1.1.3
REVISION =	4

CATEGORIES=    	mail

HOMEPAGE=	http://www.etc.msys.ch/software/ldapvacation/

SHARED_ONLY=	Yes

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c pthread ldap_r>=8 lber>=8

MASTER_SITES=  	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

NO_TEST=	Yes

LIB_DEPENDS=	databases/openldap

FAKE_FLAGS=	BINDIR=${PREFIX}/bin \
		MANDIR=${PREFIX}/man/man \
		SPATH=${PREFIX}/share/examples/ldapvacation

post-install:
	chmod a+r ${PREFIX}/share/examples/ldapvacation/ldapvacation.conf

.include <bsd.port.mk>
