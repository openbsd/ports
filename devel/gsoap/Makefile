# $OpenBSD: Makefile,v 1.1.1.1 2015/04/05 11:11:25 ajacoutot Exp $

COMMENT=		SOAP/REST Web Services and XML-Based apps toolkit

V=			2.8.1
DISTNAME=		gsoap_${V}
PKGNAME=		gsoap-${V}
EXTRACT_SUFX=		.zip
WRKDIST=		${WRKDIR}/gsoap-${V:R}

CATEGORIES=		devel

HOMEPAGE=		https://www.cs.fsu.edu/~engelen/soap.html

# MPL-like - GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m ssl stdc++ z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gsoap2/gSOAP/}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
