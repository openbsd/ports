# $OpenBSD: Makefile,v 1.1.1.1 2011/08/21 16:26:18 jasper Exp $

COMMENT=		library implementing the OAuth Core RFC 5849 standard

DISTNAME=		liboauth-0.9.4
SHARED_LIBS +=  oauth                0.0      # 8.1
CATEGORIES=		net

HOMEPAGE=		http://liboauth.sourceforge.net/

# MIT or GPLv2+
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=liboauth/}

USE_LIBTOOL=		Yes

WANTLIB+=		curl nss3
LIB_DEPENDS=		net/curl \
			security/nss

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-curl \
			--enable-libcurl \
			--enable-nss
CONFIGURE_ENV=		ac_cv_path_DOT="" \
			ac_cv_path_DOXYGEN=""

.include <bsd.port.mk>
