# $OpenBSD: Makefile,v 1.20 2001/07/10 08:11:44 jakob Exp $

DISTNAME=	snapshot-20010709
PKGNAME=	postfix-${DISTNAME}

MASTER_SITE_SUBDIR=	experimental

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
