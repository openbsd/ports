COMMENT=		SANE backend for eSCL and WSD scanners

DIST_TUPLE=		github alexpevzner sane-airscan 0.99.29 .

SHARED_LIBS += sane-airscan              0.0 # 1

CATEGORIES=		graphics

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += avahi-client avahi-common c gnutls jpeg m png pthread
WANTLIB += tiff xml2

MODULES=		devel/meson

LIB_DEPENDS=		graphics/png \
			graphics/tiff \
			net/avahi,-libs \
			security/gnutls \
			textproc/libxml

RUN_DEPENDS=		graphics/sane-backends

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sane-airscan
	mv ${WRKINST}${SYSCONFDIR}/sane.d ${PREFIX}/share/examples/sane-airscan/
	ln -s libsane-airscan.so.${LIBsane-airscan_VERSION} \
		${PREFIX}/lib/sane/libsane-airscan.so
.include <bsd.port.mk>
