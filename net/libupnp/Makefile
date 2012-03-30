# $OpenBSD: Makefile,v 1.2 2012/03/30 06:48:01 ajacoutot Exp $

COMMENT=	Universal Plug and Play SDK

DISTNAME=	libupnp-1.6.6
EXTRACT_SUFX=	.tar.bz2
REVISION=	0

CATEGORIES=	net devel

SHARED_LIBS +=  ixml                         0.0 # .2.4
SHARED_LIBS +=  threadutil                   0.0 # .4.3
SHARED_LIBS +=  upnp                         0.0 # .3.5

HOMEPAGE=	http://pupnp.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pupnp/}

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
# HAVE_COMPAT does not do anything
CONFIGURE_ENV=	ac_cv_cflags_gcc_option__Os=no \
		ac_cv_lib_compat_ftime=no

.ifdef DEBUG
CONFIGURE_ARGS+= --enable-debug
.endif

.include <bsd.port.mk>
