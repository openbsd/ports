# $OpenBSD: Makefile,v 1.1 2000/09/25 21:02:32 jakob Exp $

DISTNAME=	snapshot-20000924
PKGNAME=	postfix-${DISTNAME}

MASTER_SITE_SUBDIR=	experimental

LIB_DEPENDS+=	pcre::devel/pcre

FLAVORS=	sasl

FLAVOR?=
.if ${FLAVOR:L:Msasl}
MAKE_FLAGS+=	CCARGS="-DHAS_PCRE -I${PREFIX}/include -DUSE_SASL_AUTH -I${PREFIX}/include/sasl" \
		AUXLIBS="-L${PREFIX}/lib -lpcre -lsasl -lkrb"
LIB_DEPENDS+=	sasl::security/cyrus-sasl
.else
MAKE_FLAGS+=	CCARGS="-DHAS_PCRE -I${PREFIX}/include" \
		AUXLIBS="-L${PREFIX}/lib -lpcre"
.endif

.include <bsd.port.mk>
