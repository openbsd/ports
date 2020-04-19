# $OpenBSD: Makefile,v 1.1.1.1 2020/04/19 19:28:56 pvk Exp $

# vmm(4) architecture(s)
ONLY_FOR_ARCHS =	amd64

COMMENT =	builder engine to use OpenBSD vmm(4) with HashiCorp Packer

PACKER_V =	1.5.5
PLUGIN_V =	0.0.20200419
DISTNAME =	packer-vmm-${PLUGIN_V}

GH_ACCOUNT =	double-p
GH_PROJECT =	packer-builder-openbsd-vmm
GH_COMMIT =	c00a5cf3a9cfb5451e366c2fdcf7333b9b55c25d

CATEGORIES =	sysutils

MAINTAINER =	Pavel Korovin <pvk@openbsd.org>

MASTER_SITES0 =	https://github.com/hashicorp/packer/archive/v${PACKER_V}/
DISTFILES +=	packer-builder-openbsd-vmm-{}${GH_COMMIT}.tar.gz \
		packer-${PACKER_V}${EXTRACT_SUFX}:0

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread

MODULES =	lang/go

RUN_DEPENDS =	sysutils/packer

NO_TEST =	Yes

post-extract:
	mkdir -p ${WRKDIR}/go/src/
	mv ${WRKDIR}/packer-${PACKER_V}/vendor/* ${WRKDIR}/go/src/
	mv ${WRKDIR}/packer-${PACKER_V} \
		${WRKDIR}/go/src/github.com/hashicorp/packer

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/packer-vmm
	cp -R ${WRKSRC}/examples/* ${PREFIX}/share/examples/packer-vmm

.include <bsd.port.mk>
