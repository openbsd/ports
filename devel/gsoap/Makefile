# $OpenBSD: Makefile,v 1.3 2015/04/05 12:38:45 ajacoutot Exp $

COMMENT=		SOAP/REST Web Services and XML-Based apps toolkit

V=			2.8.21
DISTNAME=		gsoap_${V}
PKGNAME=		gsoap-${V}
EXTRACT_SUFX=		.zip
WRKDIST=		${WRKDIR}/gsoap-${V:R}

CATEGORIES=		devel

HOMEPAGE=		https://www.cs.fsu.edu/~engelen/soap.html

# MPL-like - GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m pthread ssl stdc++ z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gsoap2/gSOAP/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-pthread"

.include <bsd.port.mk>
