# $OpenBSD: Makefile,v 1.1.1.1 2002/11/06 16:12:05 shell Exp $

COMMENT=	"ldap authentication module"

DISTNAME=	login_ldap-3.2
CATEGORIES=    	sysutils	

HOMEPAGE=	http://www.ifost.org.au/~peterw/	
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Peter Werner <peterw@ifost.org.au>	

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 

BUILD_DEPENDS=	openldap:openldap-client-*:databases/openldap
NO_REGRESS=	Yes

.include <bsd.port.mk>
