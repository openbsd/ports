# $OpenBSD: Makefile,v 1.5 2021/03/08 13:59:28 sthen Exp $

# vmm(4) architecture(s)
ONLY_FOR_ARCHS =	amd64

COMMENT =	vmm(4) builder engine for HashiCorp Packer

V =		1.5.6
PKGNAME =	packer-vmm-${V}
GH_ACCOUNT =	double-p
GH_PROJECT =	packer-builder-openbsd-vmm
GH_TAGNAME =	v${V}
REVISION =	0

CATEGORIES =	sysutils

MAINTAINER =	Pavel Korovin <pvk@openbsd.org>
MASTER_SITES0 =	https://github.com/hashicorp/packer/archive/v${V}/
DISTFILES +=	${GH_PROJECT}-${V}${EXTRACT_SUFX} \
		packer-${V}${EXTRACT_SUFX}:0

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread

MODULES =	lang/go

RUN_DEPENDS =	sysutils/packer

NO_TEST =	Yes

post-patch:
	mkdir -p ${WRKDIR}/go/src/
	mv ${WRKDIR}/packer-${V}/vendor/* ${WRKDIR}/go/src/
	mv ${WRKDIR}/packer-${V} \
		${WRKDIR}/go/src/github.com/hashicorp/packer

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/packer-vmm
	cp -R ${WRKSRC}/examples/* ${PREFIX}/share/examples/packer-vmm

.include <bsd.port.mk>
