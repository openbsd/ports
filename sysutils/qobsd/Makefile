COMMENT =		manage OpenBSD VMs under QEMU for multiple architectures

GH_ACCOUNT =		catap
GH_PROJECT =		qobsd
GH_COMMIT =		b66125bb370171eefec982ee365b7b740b8ff9a7

DISTNAME =		qobsd-0.0.0pl20261122

CATEGORIES =		sysutils emulators

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# ISC
PERMIT_PACKAGE =	Yes

PKG_ARCH =		*

RUN_DEPENDS =		emulators/qemu \
			archivers/libarchive \
			sysutils/u-boot/aarch64 \
			sysutils/u-boot/arm \
			sysutils/u-boot/octeon \
			sysutils/u-boot/riscv64 \
			sysutils/opensbi \
			sysutils/talos-ii-pnor-bootkernel

CONFIGURE_STYLE =	none

NO_TEST =		Yes

.include <bsd.port.mk>
