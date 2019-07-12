# $OpenBSD: Makefile,v 1.12 2019/07/12 20:48:30 sthen Exp $

COMMENT=		library implementing the OAuth Core RFC 5849 standard

DISTNAME=		liboauth-1.0.3
SHARED_LIBS +=  oauth                8.4      # 8.7
CATEGORIES=		net

HOMEPAGE=		http://liboauth.sourceforge.net/

# MIT or GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += curl nss3

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=liboauth/}

LIB_DEPENDS=		net/curl \
			security/nss

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-nss
CONFIGURE_ENV=		ac_cv_path_DOT="" \
			ac_cv_path_DOXYGEN=""

.include <bsd.port.mk>
