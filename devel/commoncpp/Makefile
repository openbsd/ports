# $OpenBSD: Makefile,v 1.22 2019/07/12 20:44:06 sthen Exp $

COMMENT=	GNU project portable class framework for C++

VER=		1.7.3
DISTNAME=	commoncpp2-${VER}
PKGNAME=	commoncpp-${VER}
REVISION=	10
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=commoncpp/}

SHARED_LIBS+=	ccext2		2.0
SHARED_LIBS+=	ccgnu2		2.0

HOMEPAGE=	https://www.gnu.org/software/commoncpp/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	crypto ssl z m ${COMPILER_LIBCXX} pthread

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.61
CONFIGURE_ARGS+= --without-nat \
		--with-openssl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_DOXYGEN=no \
		ac_cv_header_gnutls_gnutls_h=no

do-test:
	cd ${WRKDIST}/tests && ${SETENV} ${MAKE_ENV} ${MAKE} && \
		./test.sh

.include <bsd.port.mk>
