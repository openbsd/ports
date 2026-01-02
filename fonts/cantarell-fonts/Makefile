COMMENT=		humanist sans-serif font family

GNOME_VERSION=		0.310
GNOME_PROJECT=		cantarell-fonts

# XXX https://cantarell.gnome.org/releases/cantarell-fonts-0.310.tar.xz does not
# contain the prebuilt assets 
DISTFILES=		download
DIST_SUBDIR=		${DISTNAME}
SITES=			https://gitlab.gnome.org/GNOME/cantarell-fonts/-/package_files/1260/
EXTRACT_CASES +=	*) xz -T${MAKE_JOBS} -d <${FULLDISTDIR}/$$archive | ${TAR} -xf - -- ${EXTRACT_FILES};;

CATEGORIES=		fonts x11

HOMEPAGE=		https://cantarell.gnome.org

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# SIL OFL 1.1
PERMIT_PACKAGE=		Yes

MODULES=		devel/meson \
			x11/gnome

PKG_ARCH=		*

# use pre-built font binaries; otherwise we would need psautohint
CONFIGURE_ARGS=		-Duseprebuilt=true

.include <bsd.port.mk>
