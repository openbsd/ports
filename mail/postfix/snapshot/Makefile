# $OpenBSD: Makefile,v 1.7 2000/11/21 19:45:36 jakob Exp $

DISTNAME=	snapshot-20001121
PKGNAME=	postfix-${DISTNAME}

MASTER_SITE_SUBDIR=	experimental

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
