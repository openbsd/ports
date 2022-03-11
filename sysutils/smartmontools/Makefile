COMMENT=		control and monitor storage systems using SMART

# XXX at update time check whether C++11 is actually needed
DISTNAME=		smartmontools-7.3
CATEGORIES=		sysutils

HOMEPAGE=		https://www.smartmontools.org/

MAINTAINER =		Martin Ziemer <horrad@horrad.de>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=		c m ${COMPILER_LIBCXX} util

COMPILER =		base-clang ports-gcc base-gcc
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=smartmontools/}

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--docdir=${PREFIX}/share/doc/smartmontools \
			--with-exampledir=${PREFIX}/share/examples/smartmontools \
			--with-libcap-ng=no \
			--without-drivedbdir \
			--without-gnupg

CONFIGURE_ARGS+=	--without-cxx11-option

post-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/smartd_warning.sh \
		${PREFIX}/share/examples/smartmontools

.include <bsd.port.mk>
