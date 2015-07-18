# $OpenBSD: Makefile,v 1.14 2015/07/18 18:43:30 jca Exp $

COMMENT=	GNU project portable class framework for C++

VER=		1.7.3
DISTNAME=	commoncpp2-${VER}
PKGNAME=	commoncpp-${VER}
REVISION=	6
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=commoncpp/}

SHARED_LIBS+=	ccext2		2.0
SHARED_LIBS+=	ccgnu2		2.0

HOMEPAGE=	http://www.gnutelephony.org/index.php/GNU_Common_C++

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	crypto ssl z m stdc++ pthread

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.61
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--without-nat \
		--with-openssl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_DOXYGEN=no \
		ac_cv_header_gnutls_gnutls_h=no

do-test:
	cd ${WRKDIST}/tests && ${SETENV} ${MAKE_ENV} ${MAKE} && \
		./test.sh

.include <bsd.port.mk>
