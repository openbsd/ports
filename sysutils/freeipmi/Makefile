# $OpenBSD: Makefile,v 1.12 2012/04/13 20:53:19 sthen Exp $

# needs machine/sysarch.h & machine/pio.h
ONLY_FOR_ARCHS=	amd64 arm i386

COMMENT=	FreeIPMI provides in-band and out-of-band IPMI software

V=		0.4.6
DISTNAME=	freeipmi-${V}
REVISION=	2

SHARED_LIBS +=  freeipmi 4.0                  # .4.0
SHARED_LIBS +=  ipmidetect 0.0                # .0.0
SHARED_LIBS +=  freeipmi 4.0                  # .4.0
SHARED_LIBS +=  ipmiconsole 1.1               # .1.1
SHARED_LIBS +=  ipmimonitoring 0.1            # .0.1

CATEGORIES=	sysutils

HOMEPAGE=	http://www.gnu.org/software/freeipmi/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

# GPL v2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gpg-error m pthread gcrypt>=12

MASTER_SITES=	ftp://ftp.zresearch.com/pub/freeipmi/${V}/

MODULES=	devel/gettext
BUILD_DEPENDS=	devel/argp-standalone
LIB_DEPENDS=	security/libgcrypt

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--disable-dependency-tracking \
		--localstatedir=/var
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"
FAKE_FLAGS=	localstatedir=${PREFIX}/share/examples/freeipmi \
		sysconfdir=${PREFIX}/share/examples/freeipmi

post-install:
	cd ${PREFIX}/share/examples/freeipmi && \
	    mv ${WRKINST}${SYSCONFDIR}/ipmi_monitoring_sensors.conf . && \
	    mv db/freeipmi/bmc-config-template db/freeipmi/ipckey . && \
	    rm -rf init.d logrotate.d && \
	    rmdir db/freeipmi db log/freeipmi log

.include <bsd.port.mk>
