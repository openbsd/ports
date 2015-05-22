# $OpenBSD: Makefile,v 1.7 2015/05/22 11:31:17 ajacoutot Exp $

COMMENT=	Universal Plug and Play SDK

DISTNAME=	libupnp-1.6.18
EXTRACT_SUFX=	.tar.bz2
REVISION=	0

CATEGORIES=	net devel

SHARED_LIBS +=  ixml                         0.1 # .2.7
SHARED_LIBS +=  threadutil                   1.0 # .6.2
SHARED_LIBS +=  upnp                         1.0 # .9.1

HOMEPAGE=	http://pupnp.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pupnp/}

WANTLIB =	pthread


CONFIGURE_STYLE= gnu
# HAVE_COMPAT does not do anything
CONFIGURE_ENV=	ac_cv_cflags_gcc_option__Os=no \
		ac_cv_lib_compat_ftime=no

.ifdef DEBUG
CONFIGURE_ARGS+= --enable-debug
.endif

.include <bsd.port.mk>
