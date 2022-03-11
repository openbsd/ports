COMMENT =		hardware abstraction library for xtensa lx106
VERSION	=		1.0
REVISION =		0

DISTNAME =		lx106-hal
PKGNAME =		xtensa-${DISTNAME}-${VERSION}

GH_ACCOUNT =		earlephilhower
GH_PROJECT =		lx106-hal
GH_COMMIT =		e4bcc63c9c016e4f8848e7e8f512438ca857531d

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/xtensa-lx106-elf/gcc
RUN_DEPENDS =		devel/xtensa-lx106-elf/binutils \
			devel/xtensa-lx106-elf/newlib \
			devel/xtensa-lx106-elf/gcc

CONFIGURE_ENV =		CC="${INSTALLDIR}/bin/${CONFIG}-cc"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS +=	--host=${CONFIG} \
			--exec-prefix=${INSTALLDIR}/${CONFIG} \
			--includedir="${INSTALLDIR}/${CONFIG}/include" \
			--libdir="${INSTALLDIR}/${CONFIG}/lib"

pre-configure:
	@cd ${WRKSRC} && ${AUTOCONF_ENV} autoreconf -i

.include <bsd.port.mk>
