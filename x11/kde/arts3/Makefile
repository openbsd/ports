# $OpenBSD: Makefile,v 1.18 2003/01/27 19:10:47 espie Exp $

COMMENT=		"X11 toolkit, multimedia hub"
COMMENT-gmcop=		"glib support for mcop"
CATEGORIES=		x11 x11/kde
VERSION=		3.1
DISTNAME=		arts-1.1

NOT_FOR_ARCHS=
LIB_DEPENDS= 	audiofile::devel/libaudiofile
SEPARATE_BUILD=flavored

PSEUDO_FLAVORS=no_glib
FLAVOR?=

.if ${FLAVOR:L:Mno_glib}
CONFIGURE_ENV+=ac_cv_path_PKG_CONFIG=no
.else
MULTI_PACKAGES=-gmcop
PKGNAME-gmcop=	arts-gmcop-1.1
BUILD_DEPENDS=::devel/glib2
.endif

SUBPACKAGE?=

.if ${SUBPACKAGE} == "-gmcop"
LIB_DEPENDS+=glib-2.0.0.0,gmodule-2.0.0.0,gobject-2.0.0.0,gthread-2.0.0.0::devel/glib2 
.endif
		
pre-build:
	@if pkg dependencies check kdelibs-\*; then \
		if pkg dependencies check ${DISTNAME}; then \
			:; \
		else \
			echo 1>&2 "Error: you must remove your old kdelibs first"; \
			exit 1; \
		fi; \
    	fi

.include <bsd.port.mk>
