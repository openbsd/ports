# $OpenBSD: Makefile,v 1.54 2002/11/06 21:48:38 jakob Exp $

VERSION=	1.1.11-20021106

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
TLSPFIXVERSION=	1.1.11-20021031
TLSSSLVERSION=	0.9.6g
TLSDISTNAME=	pfixtls-${TLSVERSION}-${TLSPFIXVERSION}-${TLSSSLVERSION}

.include <bsd.port.mk>
