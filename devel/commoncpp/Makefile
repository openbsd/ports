# $OpenBSD: Makefile,v 1.2 2008/03/31 01:08:46 jakemsr Exp $

COMMENT=	GNU project portable class framework for C++

DISTNAME=	commoncpp2-1.6.1
PKGNAME=	commoncpp-1.6.1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=commoncpp/}

SHARED_LIBS+=	ccext2	1.0	# 0.1
SHARED_LIBS+=	ccgnu2	1.0	# 0.1

HOMEPAGE=	http://wiki.gnutelephony.org/index.php/GNU_Common_CPP_Framework

# GPL
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
