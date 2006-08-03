# $OpenBSD: Makefile,v 1.5 2006/08/03 13:09:09 espie Exp $

COMMENT=	"return 'I am not here' indication stored in a LDAP tree"

DISTNAME=	ldapvacation-1.1.0

CATEGORIES=    	mail

HOMEPAGE=	http://www.etc.msys.ch/software/ldapvacation/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

SHARED_ONLY=	Yes

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c pthread

MASTER_SITES=  	ftp://ftp.etc.msys.ch/pub/sources/ldapvacation/
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	ldap_r.>=8,lber.>=8::databases/openldap

NO_REGRESS=	Yes

.include <bsd.port.mk>
