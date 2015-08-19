# $OpenBSD: Makefile,v 1.9 2015/08/19 18:55:04 sthen Exp $

COMMENT=	Universal Plug and Play SDK

DISTNAME=	libupnp-1.6.19
REVISION=	0
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net devel

SHARED_LIBS +=  ixml                 0.2      # 2.8
SHARED_LIBS +=  threadutil           1.1      # 6.4
SHARED_LIBS +=  upnp                 1.1      # 9.3

HOMEPAGE=	http://pupnp.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pupnp/}

CONFIGURE_STYLE= gnu
# HAVE_COMPAT does not do anything
CONFIGURE_ENV=	ac_cv_cflags_gcc_option__Os=no \
		ac_cv_lib_compat_ftime=no

.ifdef DEBUG
CONFIGURE_ARGS+= --enable-debug
.endif

.include <bsd.port.mk>
