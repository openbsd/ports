COMMENT=		library for loading and enumerating PKCS\#11 modules

V=			0.25.4
DISTNAME=		p11-kit-${V}
EXTRACT_SUFX=		.tar.xz

CATEGORIES=		security

SHARED_LIBS += p11-kit                   3.2 # 0.4.0

HOMEPAGE=		http://p11-glue.freedesktop.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD-like
PERMIT_PACKAGE=	Yes

SITES=			https://github.com/p11-glue/p11-kit/releases/download/${V}/

WANTLIB += c ffi intl pthread tasn1

MODULES=		devel/meson

CFLAGS +=		-pthread

BUILD_DEPENDS=		devel/gettext,-tools \
			shells/bash-completion

LIB_DEPENDS=		devel/gettext,-runtime \
			devel/libffi \
			security/libtasn1

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=		-Dtrust_paths=/etc/ssl/cert.pem \
			-Dsystemd=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p11-kit/
	mv ${WRKINST}${SYSCONFDIR}/pkcs11 \
		${PREFIX}/share/examples/p11-kit/
# see the install-exec-hook target in p11-kit/Makefile.am
	ln -sf libp11-kit.so.${LIBp11-kit_VERSION} ${PREFIX}/lib/p11-kit-proxy.so

.include <bsd.port.mk>
