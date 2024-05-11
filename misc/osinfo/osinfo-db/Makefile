COMMENT=		osinfo database files

V=			20240510
DISTNAME=		osinfo-db-${V}
EXTRACT_SUFX=		.tar.xz

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

USE_GMAKE=		No

BUILD_DEPENDS=		misc/osinfo/osinfo-db-tools

do-install:
	osinfo-db-import --root ${WRKINST} --dir ${TRUEPREFIX}/share/osinfo \
		${FULLDISTDIR}/${DISTFILES}

# Adding a new OpenBSD release
# ============================
# - fork+clone+branch https://gitlab.com/libosinfo/osinfo-db
# cd osinfo-db/data/os/openbsd.org/
# cp openbsd-X.Y.xml.in openbsd-X.Y+1.xml.in
# - substitute X.Y => X.Y+1, XY => XY+1, XY-2 => XY-1 etc.
# - fix Copyright, release-date, eol-date
# cd ../../../tests/isodata/openbsd/
# mkdir openbsdX.Y+1 && cd openbsdX.Y+1
# - fetch i386 and amd64 install and boot-only ISOs
# isoinfo -d -i cd75.iso >openbsd-7.5-amd64-bootonly.iso.txt
# isoinfo -d -i install75.iso >openbsd-7.5-amd64.iso.txt
# isoinfo -d -i cd75.iso >openbsd-7.5-i386-bootonly.iso.txt
# isoinfo -d -i install75.iso >openbsd-7.5-i386.iso.txt

.include <bsd.port.mk>
