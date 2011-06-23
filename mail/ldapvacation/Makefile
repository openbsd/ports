# $OpenBSD: Makefile,v 1.14 2011/06/23 22:50:27 naddy Exp $

COMMENT=	return 'I am not here' indication stored in a LDAP tree

DISTNAME=	ldapvacation-1.1.3
REVISION =	1

CATEGORIES=    	mail

HOMEPAGE=	http://www.etc.msys.ch/software/ldapvacation/

SHARED_ONLY=	Yes

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c pthread ldap_r>=8 lber>=8

MASTER_SITES=  	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	databases/openldap

FAKE_FLAGS=	BINDIR=${PREFIX}/bin \
		MANDIR=${PREFIX}/man/man \
		SPATH=${PREFIX}/share/examples/ldapvacation

NO_REGRESS=	Yes

.include <bsd.port.mk>
