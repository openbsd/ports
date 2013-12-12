# $OpenBSD: Makefile,v 1.5 2013/12/12 14:54:29 ajacoutot Exp $

COMMENT=	Brother P-touch CUPS driver

DISTNAME=	ptouch-driver-1.3
CATEGORIES=	print
REVISION=	2

HOMEPAGE=	http://www.diku.dk/hjemmesider/ansatte/panic/P-touch/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cups cupsimage m pthread

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	print/cups,-libs

# foomatic-rip(1), foomatic-db(-engine)
RUN_DEPENDS +=	print/cups-filters

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"
CONFIGURE_ARGS=	libdir=${PREFIX}/libexec

pre-configure:
	${SUBST_CMD} ${WRKSRC}/driver/ptouch.xml

.include <bsd.port.mk>
