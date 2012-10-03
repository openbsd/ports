# $OpenBSD: Makefile,v 1.3 2012/10/03 08:16:30 ajacoutot Exp $

COMMENT=		library implementing the OAuth Core RFC 5849 standard

DISTNAME=		liboauth-0.9.7
SHARED_LIBS +=  oauth                8.3      # 8.4
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
			--enable-nss
CONFIGURE_ENV=		ac_cv_path_DOT="" \
			ac_cv_path_DOXYGEN=""

.include <bsd.port.mk>
