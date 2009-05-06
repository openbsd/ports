# $OpenBSD: Makefile,v 1.5 2009/05/06 17:16:17 sthen Exp $

COMMENT=	GNU project portable class framework for C++

VER=		1.7.3
DISTNAME=	commoncpp2-${VER}
PKGNAME=	commoncpp-${VER}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=commoncpp/}

SHARED_LIBS+=	ccext2		2.0
SHARED_LIBS+=	ccgnu2		2.0

HOMEPAGE=	http://www.gnutelephony.org/index.php/GNU_Common_C++

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	crypto ssl z

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.61
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--without-nat \
		--with-openssl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_DOXYGEN=no \
		ac_cv_header_gnutls_gnutls_h=no

do-regress:
	cd ${WRKDIST}/tests && ${SETENV} ${MAKE_ENV} ${MAKE} && \
		./test.sh

.include <bsd.port.mk>
