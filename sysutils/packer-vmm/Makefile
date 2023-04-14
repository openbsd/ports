# vmm(4) architecture(s)
ONLY_FOR_ARCHS =	amd64

COMMENT =	vmm(4) builder engine for HashiCorp Packer

V =		1.7.3
MODGO_MODNAME =	github.com/double-p/packer-builder-openbsd-vmm
MODGO_VERSION =	v${V}
DISTNAME =	packer-vmm-${V}
PKGNAME =	packer-vmm-${V}

CATEGORIES =	sysutils

MAINTAINER =	Pavel Korovin <pvk@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread

MODULES =	lang/go

RUN_DEPENDS =	sysutils/packer>=1.7.0

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/packer-vmm
	cp -R ${WRKSRC}/examples/* ${PREFIX}/share/examples/packer-vmm

.include "modules.inc"

.include <bsd.port.mk>
