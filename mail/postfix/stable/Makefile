# $OpenBSD: Makefile,v 1.7 2001/03/30 06:41:18 jakob Exp $

DISTNAME=	postfix-20010228-pl01

MASTER_SITE_SUBDIR=	official

FLAVORS=	pcre sasl ldap
FLAVOR?=

.if ${FLAVOR:L:Mpcre}
LIB_DEPENDS+=	pcre::devel/pcre

MAKE_CCARGS+=	-I${PREFIX}/include -DHAS_PCRE
MAKE_AUXLIBS+=	-L${PREFIX}/lib -lpcre
.endif

.if ${FLAVOR:L:Msasl}
LIB_DEPENDS+=	sasl::security/cyrus-sasl

MAKE_CCARGS+=	-I${PREFIX}/include -I${PREFIX}/include/sasl -DUSE_SASL_AUTH 
MAKE_AUXLIBS+=	-L${PREFIX}/lib -lsasl -lkrb
.endif

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+=	ldap::databases/openldap
MAKE_CCARGS+=	-I${PREFIX}/include -DHAS_LDAP
MAKE_AUXLIBS+=	-L${PREFIX}/lib -lldap -llber
.endif

.include <bsd.port.mk>
