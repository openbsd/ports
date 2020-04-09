# $OpenBSD: Makefile,v 1.14 2020/04/09 15:15:09 sthen Exp $

COMMENT=	Universal Plug and Play SDK

DISTNAME=	libupnp-1.8.7
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net devel

SHARED_LIBS +=  ixml                 1.0      # 10.2
SHARED_LIBS +=  upnp                 3.0      # 14.2

# also https://github.com/pupnp/pupnp
HOMEPAGE=	https://pupnp.sourceforge.io/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pupnp/}

SEPARATE_BUILD=	Yes
DEBUG_PACKAGES=	${BUILD_PACKAGES}

CONFIGURE_STYLE= gnu
# HAVE_COMPAT does not do anything
CONFIGURE_ENV=	ac_cv_cflags_gcc_option__Os=no \
		ac_cv_lib_compat_ftime=no
CONFIGURE_ARGS=	--enable-reuseaddr

.include <bsd.port.mk>
