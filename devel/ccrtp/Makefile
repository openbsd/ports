# $OpenBSD: Makefile,v 1.6 2010/11/08 01:22:36 espie Exp $

COMMENT=	implementation of the Real-time Transport Protocol

DISTNAME=	ccrtp-1.7.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=ccrtp/}

SHARED_LIBS=	ccrtp1		2.0

HOMEPAGE=	http://www.gnutelephony.org/index.php/GNU_ccRTP

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	crypto ssl ccgnu2.>=1

LIB_DEPENDS=	::devel/commoncpp

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURED_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_DOXYGEN=no \
		ac_cv_path_LIBGCRYPT_CONFIG=no

NO_REGRESS=	Yes

.include <bsd.port.mk>
