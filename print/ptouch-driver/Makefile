# $OpenBSD: Makefile,v 1.3 2012/08/04 14:56:35 ajacoutot Exp $

COMMENT=	Brother P-touch CUPS driver

DISTNAME=	ptouch-driver-1.3
CATEGORIES=	print

REVISION=	1

HOMEPAGE=	http://www.diku.dk/hjemmesider/ansatte/panic/P-touch/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c cups cupsimage m pthread

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	print/cups,-libs

# share/foomatic/db/source/*/*.xml
RUN_DEPENDS +=	print/foomatic-db-engine

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"
CONFIGURE_ARGS=	libdir=${PREFIX}/libexec

pre-configure:
	${SUBST_CMD} ${WRKSRC}/driver/ptouch.xml

.include <bsd.port.mk>
