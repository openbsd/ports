# $OpenBSD: Makefile,v 1.9 2019/07/12 20:48:56 sthen Exp $

COMMENT=		Brother P-touch CUPS driver

V=			1.4.2
DISTNAME=		ptouch-driver-${V}

DISTFILES=		${V}${EXTRACT_SUFX}
DIST_SUBDIR=		ptouch-driver
WRKDIST=		${WRKDIR}/philpem-printer-driver-ptouch-72121843b720

CATEGORIES=		print

HOMEPAGE=		https://bitbucket.org/philpem/printer-driver-ptouch

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c cups cupsimage m

MASTER_SITES=		https://bitbucket.org/philpem/printer-driver-ptouch/get/

LIB_DEPENDS=		print/cups,-libs

# foomatic-rip(1), foomatic-db{,-engine}
RUN_DEPENDS +=		print/cups-filters

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		libdir=${PREFIX}/libexec

# uses gnu89-inlines; fixes build with clang
CFLAGS +=		-fgnu89-inline

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15

pre-configure:
	${SUBST_CMD} ${WRKSRC}/driver/ptouch.xml

.include <bsd.port.mk>
