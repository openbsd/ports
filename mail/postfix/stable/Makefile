# $OpenBSD: Makefile,v 1.14 2001/09/18 05:50:30 jakob Exp $

DISTNAME=	postfix-20010228-pl05
PKGNAME=	postfix-20010228.pl05

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

MASTER_SITE_SUBDIR=	official

FLAVORS=	pcre sasl ldap
FLAVOR?=

.if ${FLAVOR:L:Mpcre}
LIB_DEPENDS+=	pcre::devel/pcre

MAKE_CCARGS+=	-I${LOCALBASE}/include -DHAS_PCRE
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lpcre
.endif

.if ${FLAVOR:L:Msasl}
LIB_DEPENDS+=	sasl::security/cyrus-sasl

MAKE_CCARGS+=	-I${LOCALBASE}/include -I${LOCALBASE}/include/sasl -DUSE_SASL_AUTH 
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lsasl -lkrb
.endif

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+=	ldap::databases/openldap
MAKE_CCARGS+=	-I${LOCALBASE}/include -DHAS_LDAP
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lldap -llber
.endif

.include <bsd.port.mk>
