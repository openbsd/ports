# $OpenBSD: Makefile,v 1.47 2022/01/25 09:51:17 sthen Exp $

COMMENT=	IPMI library and tools (in- and out-of-band)

DISTNAME=	freeipmi-1.6.9

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

# modified m4 files
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
LIBTOOL_FLAGS=	--tag=disable-static

pre-install:
	${INSTALL_DATA_DIR} ${WRKINST}${SYSCONFDIR}/freeipmi

post-install:
	mv ${WRKINST}${SYSCONFDIR}/freeipmi ${PREFIX}/share/examples/
	mv ${WRKINST}/var/lib/freeipmi/ipckey ${PREFIX}/share/examples/freeipmi
	rmdir ${WRKINST}/var/lib{/freeipmi,}
	rm -r ${WRKINST}${SYSCONFDIR}/{sysconfig,init.d}

.include <bsd.port.mk>
