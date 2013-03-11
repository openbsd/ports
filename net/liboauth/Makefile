# $OpenBSD: Makefile,v 1.5 2013/03/11 11:35:48 espie Exp $

COMMENT=		library implementing the OAuth Core RFC 5849 standard

DISTNAME=		liboauth-1.0.0
SHARED_LIBS +=  oauth                8.3      # 8.4
CATEGORIES=		net

HOMEPAGE=		http://liboauth.sourceforge.net/

# MIT or GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=liboauth/}

USE_LIBTOOL=		Yes

WANTLIB+=		curl nss3
LIB_DEPENDS=		net/curl \
			security/nss

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-nss
CONFIGURE_ENV=		ac_cv_path_DOT="" \
			ac_cv_path_DOXYGEN=""

.include <bsd.port.mk>
