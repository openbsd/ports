# $OpenBSD: Makefile,v 1.13 2002/10/28 21:44:32 espie Exp $

COMMENT=		"X11 toolkit, multimedia hub"
CATEGORIES=		x11 x11/kde
VERSION=		3.0.4
DISTNAME=		arts-1.0.4
#PKGNAME=		${DISTNAME}p1

NOT_FOR_ARCHS=
LIB_DEPENDS= 	audiofile::devel/libaudiofile
SEPARATE_BUILD=simple
		
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
