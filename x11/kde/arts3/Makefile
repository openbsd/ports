# $OpenBSD: Makefile,v 1.8 2002/05/23 14:37:21 espie Exp $

COMMENT=		"X11 toolkit, multimedia hub"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.504
VERSION=		3.0.1
DISTNAME=		arts-1.0.1

NOT_FOR_ARCHS=
LIB_DEPENDS= 	audiofile::devel/libaudiofile
		
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
