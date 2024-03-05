COMMENT=	resource manager for PC/SC

V=		2.0.2
DISTNAME=	pcsc-lite-${V}
CATEGORIES=	security

SHARED_LIBS+=	pcsclite	1.0 # 1.0.0
SHARED_LIBS+=	pcscspy		0.0 # 0.0.0

HOMEPAGE=	https://pcsclite.apdu.fr

SITES=		https://pcsclite.apdu.fr/files/

EXTRACT_SUFX=	.tar.bz2

# BSD and GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB=		c pthread usb-1.0

MODULES+=		lang/python
MODPY_BUILDDEP=		No

MODPY_ADJ_LINES=	src/spy/pcsc-spy

# thread-local storage
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

LIB_DEPENDS=		devel/libusb1

MODPY_ADJ_FILES=	src/spy/pcsc-spy

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu

CONFIGURE_ARGS=	--disable-libudev \
		--disable-libsystemd \
		--disable-polkit \
		--without-systemdsystemunitdir \
		--enable-libusb \
		--enable-confdir=${SYSCONFDIR}/ccid \
		--enable-ipcdir=/var/run/pcscd

CONFIGURE_ENV=	ac_cv_lib_lex='none needed'

TEST_DEPENDS=	${BUILD_PKGPATH}=${V} \
		security/ccid

# The pcscd server needs to be up and running and tests prompt/wait for
# insertion of a smart card reader as well as smart card
TEST_IS_INTERACTIVE= Yes

do-test:
	${WRKBUILD}/src/testpcsc

post-install:
	rm ${PREFIX}/share/doc/pcsc-lite/{README.polkit,*install_spy.sh}
	rmdir ${PREFIX}/share/doc/pcsc-lite

.include <bsd.port.mk>
