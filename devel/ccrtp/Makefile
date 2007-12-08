# $OpenBSD: Makefile,v 1.1.1.1 2007/12/08 05:23:20 jakemsr Exp $

COMMENT=	implementation of the Real-time Transport Protocol

DISTNAME=	ccrtp-1.5.1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=ccrtp/}

SHARED_LIBS=	ccrtp1	0.0	# 1.0

HOMEPAGE=	http://wiki.gnutelephony.org/index.php/GNU_ccRTP

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	crypto

LIB_DEPENDS=	ccgnu2::devel/commoncpp

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURED_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_DOXYGEN=no \
		ac_cv_lib_gcrypt_gcry_cipher_open=no

NO_REGRESS=	Yes

.include <bsd.port.mk>
