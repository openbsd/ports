# $OpenBSD: Makefile,v 1.48 2002/06/22 08:59:13 jakob Exp $

VERSION=	1.1.11-20020613

DISTNAME=	postfix-${VERSION}
PKGNAME=	postfix-${VERSION}

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

FLAVORS+=	sasl2
FLAVOR?=

.if ${FLAVOR:L:Msasl2}
LIB_DEPENDS+=	sasl2::security/cyrus-sasl2
MAKE_CCARGS+=	-I${LOCALBASE}/include -I${LOCALBASE}/include/sasl -DUSE_SASL_AUTH 
MAKE_AUXLIBS+=	-L${LOCALBASE}/lib -lsasl2
.endif

TLSVERSION=	0.8.11a
TLSPFIXVERSON=	${VERSION}
TLSSSLVERSION=	0.9.6d
TLSDISTNAME=	pfixtls-${TLSVERSION}-${TLSPFIXVERSON}-${TLSSSLVERSION}

.include <bsd.port.mk>
