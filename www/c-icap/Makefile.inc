CATEGORIES=	www

HOMEPAGE?=	https://c-icap.sourceforge.net/

# LGPLv2.1+
PERMIT_PACKAGE?= Yes

CONFIGURE_STYLE=  autoreconf
AUTOCONF_VERSION= 2.71
AUTOMAKE_VERSION= 1.16
AUTORECONF=	  sh ./RECONF

LIBTOOL_FLAGS=	--tag=disable-static
DEBUG_PACKAGES=	${BUILD_PACKAGES}
SYSCONFDIR=	${BASESYSCONFDIR}/c-icap

post-install:
	rm ${PREFIX}/lib/c_icap/*.la
