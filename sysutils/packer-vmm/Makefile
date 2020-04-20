# $OpenBSD: Makefile,v 1.3 2020/04/20 08:19:50 pvk Exp $

# vmm(4) architecture(s)
ONLY_FOR_ARCHS =	amd64

COMMENT =	vmm(4) builder engine for HashiCorp Packer

VERSION =	1.0.0
PACKER_V =	1.5.5
PKGNAME =	packer-vmm-${VERSION}
GH_ACCOUNT =	double-p
GH_PROJECT =	packer-builder-openbsd-vmm
GH_TAGNAME =	v${VERSION}

CATEGORIES =	sysutils

MAINTAINER =	Pavel Korovin <pvk@openbsd.org>

MASTER_SITES0 =	https://github.com/hashicorp/packer/archive/v${PACKER_V}/
DISTFILES +=	${GH_PROJECT}-${VERSION}${EXTRACT_SUFX} \
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
