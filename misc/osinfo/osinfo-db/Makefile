# $OpenBSD: Makefile,v 1.33 2020/05/31 10:36:36 ajacoutot Exp $

COMMENT=		osinfo database files

V=			20200529
DISTNAME=		osinfo-db-${V}
EXTRACT_SUFX=		.tar.xz

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

USE_GMAKE=		No

BUILD_DEPENDS=		misc/osinfo/osinfo-db-tools

CONFIGURE_STYLE=	none # !meson

do-install:
	osinfo-db-import --root ${WRKINST} --dir ${TRUEPREFIX}/share/osinfo \
		${FULLDISTDIR}/${DISTFILES}
# https://gitlab.com/libosinfo/osinfo-db/-/merge_requests/151
	${INSTALL_DATA} ${FILESDIR}/openbsd-6.7.xml \
		${PREFIX}/share/osinfo/os/openbsd.org/

# Adding a new OpenBSD release
# ============================
# - fork+clone https://gitlab.com/libosinfo/osinfo-db
# cd osinfo-db/data/os/openbsd.org/
# cp openbsd-X.Y.xml.in openbsd-X.Y+1.xml.in
# - substitute X.Y => X.Y+1, XY => XY+1, XY-2 => XY-1 etc.
# - fix Copyright, release-date, eol-datee
# cd ../../../tests/isodata/openbsd/
# mkdir openbsdX.Y+1 && cd openbsdX.Y+1
# - fetch i386 and amd64 install and boot-only ISOs
# isoinfo -d -i cd66.iso >openbsd-6.6-amd64-bootonly.txt
# isoinfo -d -i install66.iso >openbsd-6.6-amd64.txt
# isoinfo -d -i cd66.iso >openbsd-6.6-i386-bootonly.txt
# isoinfo -d -i install66.iso >openbsd-6.6-i386.txt

.include <bsd.port.mk>
