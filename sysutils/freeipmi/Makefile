# $OpenBSD: Makefile,v 1.21 2015/10/21 13:25:18 sthen Exp $

# needs machine/sysarch.h & machine/pio.h
ONLY_FOR_ARCHS=	amd64 arm i386

COMMENT=	IPMI library and tools (in- and out-of-band)

V=		1.4.10
DISTNAME=	freeipmi-${V}

SHARED_LIBS +=	freeipmi             5.1      # 16.6
SHARED_LIBS +=	ipmiconsole          2.0      # 5.3
SHARED_LIBS +=	ipmimonitoring       1.0      # 5.6
SHARED_LIBS +=	ipmidetect           1.0      # 0.0

CATEGORIES=	sysutils

HOMEPAGE=	https://www.gnu.org/software/freeipmi/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gpg-error m pthread gcrypt>=12

MASTER_SITES=	${MASTER_SITE_GNU:=freeipmi/}

MODULES=	devel/gettext
BUILD_DEPENDS=	devel/argp-standalone
LIB_DEPENDS=	security/libgcrypt

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
FAKE_FLAGS=	localstatedir=${PREFIX}/share/examples/freeipmi \
		sysconfdir=${PREFIX}/share/examples/freeipmi \
		FREEIPMI_SYSCONFDIR=${PREFIX}/share/examples/freeipmi

post-install:
	cd ${PREFIX}/share/examples/freeipmi && \
	    mv lib/freeipmi/ipckey . && \
	    rm -r init.d sysconfig lib

.include <bsd.port.mk>
