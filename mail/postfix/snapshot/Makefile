# $OpenBSD: Makefile,v 1.4 2000/10/05 21:16:50 jakob Exp $

DISTNAME=	snapshot-20001005
PKGNAME=	postfix-${DISTNAME}

MASTER_SITE_SUBDIR=	experimental

FLAVORS=	pcre sasl
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

.include <bsd.port.mk>
