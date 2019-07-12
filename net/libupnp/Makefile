# $OpenBSD: Makefile,v 1.13 2019/07/12 20:48:31 sthen Exp $

COMMENT=	Universal Plug and Play SDK

DISTNAME=	libupnp-1.8.4
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net devel

SHARED_LIBS +=  ixml                 1.0      # 10.1.0
SHARED_LIBS +=  upnp                 2.0      # 13.0.0

HOMEPAGE=	http://pupnp.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pupnp/}

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
# HAVE_COMPAT does not do anything
CONFIGURE_ENV=	ac_cv_cflags_gcc_option__Os=no \
		ac_cv_lib_compat_ftime=no
CONFIGURE_ARGS=	--enable-reuseaddr

.ifdef DEBUG
CONFIGURE_ARGS+= --enable-debug
.endif

.include <bsd.port.mk>
