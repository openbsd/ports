# $OpenBSD: Makefile,v 1.42 2020/07/11 22:54:39 sthen Exp $

COMMENT=	IPMI library and tools (in- and out-of-band)

DISTNAME=	freeipmi-1.6.5
REVISION=	0

SHARED_LIBS +=  freeipmi             7.0      # 19.3
SHARED_LIBS +=  ipmiconsole          3.1      # 5.5
SHARED_LIBS +=  ipmimonitoring       1.1      # 6.8
SHARED_LIBS +=  ipmidetect           1.1      # 0.1

CATEGORIES=	sysutils

HOMEPAGE=	https://www.gnu.org/software/freeipmi/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c gcrypt gpg-error iconv intl m pthread

MASTER_SITES=	${MASTER_SITE_GNU:=freeipmi/}

BUILD_DEPENDS=	devel/argp-standalone
LIB_DEPENDS=	security/libgcrypt \
		devel/gettext,-runtime

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
FAKE_FLAGS=	localstatedir=${PREFIX}/share/examples/freeipmi \
		sysconfdir=${PREFIX}/share/examples/freeipmi \
		FREEIPMI_SYSCONFDIR=${PREFIX}/share/examples/freeipmi
LIBTOOL_FLAGS=	--tag=disable-static

post-install:
	cd ${PREFIX}/share/examples/freeipmi && \
	    mv lib/freeipmi/ipckey . && \
	    rm -r init.d sysconfig lib

.include <bsd.port.mk>
