# $OpenBSD: Makefile,v 1.3 2003/02/21 20:56:22 pvalchev Exp $

COMMENT=	"provide ldap authentication type"

DISTNAME=	login_ldap-3.3
CATEGORIES=    	sysutils	

HOMEPAGE=	http://www.ifost.org.au/~peterw/	
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Sebastian Stark <seb@todesplanet.de>

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 

LIB_DEPENDS=	lber,ldap:openldap-client-*:databases/openldap
NO_REGRESS=	Yes

pre-fake:
	perl -pi -e "s@/usr/local@${PREFIX}@" ${WRKSRC}/login_ldap.8

.include <bsd.port.mk>
