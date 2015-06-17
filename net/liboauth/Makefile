# $OpenBSD: Makefile,v 1.10 2015/06/17 19:56:29 jasper Exp $

COMMENT=		library implementing the OAuth Core RFC 5849 standard

DISTNAME=		liboauth-1.0.3
SHARED_LIBS +=  oauth                8.4      # 8.7
CATEGORIES=		net

HOMEPAGE=		http://liboauth.sourceforge.net/

# MIT or GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += curl nss3

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=liboauth/}

LIB_DEPENDS=		net/curl \
			security/nss

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-nss
CONFIGURE_ENV=		ac_cv_path_DOT="" \
			ac_cv_path_DOXYGEN=""

.include <bsd.port.mk>
