# $OpenBSD: Makefile,v 1.5 2004/12/20 10:35:35 alek Exp $

COMMENT=	"provide ldap authentication type"

DISTNAME=	login_ldap-3.3
CATEGORIES=    	sysutils	

HOMEPAGE=	http://www.ifost.org.au/~peterw/	
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Peter Werner <peterw@ifost.org.au>

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		c

LIB_DEPENDS=	lber,ldap:openldap-client-*:databases/openldap
NO_REGRESS=	Yes

pre-fake:
	perl -pi -e "s@/usr/local@${PREFIX}@" ${WRKSRC}/login_ldap.8

.include <bsd.port.mk>
