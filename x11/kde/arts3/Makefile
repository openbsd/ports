# $OpenBSD: Makefile,v 1.26 2004/02/01 22:40:52 espie Exp $

COMMENT=		"X11 toolkit, multimedia hub"
CATEGORIES=		x11 x11/kde
VERSION=		3.1.95
DISTNAME=		arts-1.1.95
MODKDE_VERSION?=	3.2

NOT_FOR_ARCHS=
LIB_DEPENDS= 	audiofile::devel/libaudiofile \
		glib-2.0.0.0,gmodule-2.0.0.0,gthread-2.0.0.0::devel/glib2 

SEPARATE_BUILD=flavored

BUILD_DEPENDS=	::devel/pkgconfig


		
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
