# $OpenBSD: Makefile,v 1.1.1.1 2011/03/16 10:11:37 sthen Exp $

COMMENT=	authentication provider for OATH one-time passwords

DISTNAME=	login_oath-0.6
CATEGORIES=    	sysutils	

MASTER_SITES=	http://spacehopper.org/mirrors/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 

WANTLIB=	c oath util

NO_REGRESS=	Yes

LIB_DEPENDS=	security/oath-toolkit

post-install:
	${INSTALL_DATA} ${WRKSRC}/README \
	    ${PREFIX}/share/doc/pkg-readmes/${FULLPKGNAME}

.include <bsd.port.mk>
