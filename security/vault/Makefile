# $OpenBSD: Makefile,v 1.55 2021/03/25 18:13:54 pvk Exp $

COMMENT=		secure secret storage

GH_TAGNAME=		v1.7.0
GH_ACCOUNT=		hashicorp
GH_PROJECT=		vault

### Vault UI
MODGO_FLAGS=		-tags=ui
MASTER_SITES0=		https://distfiles.tristero.se/
EXTRACT_ONLY=		${DISTNAME}${EXTRACT_SUFX}
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} \
			${DISTNAME}-bindata_assetfs.go:0

CATEGORIES=		security net

HOMEPAGE=		https://www.vaultproject.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>
# MPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c pthread

MODULES=		lang/go

post-extract:
	install -m644 ${FULLDISTDIR}/${DISTNAME}-bindata_assetfs.go \
		${WRKDIST}/http/bindata_assetfs.go

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vault
	${INSTALL_DATA} ${FILESDIR}/vault.hcl \
		${PREFIX}/share/examples/vault

.include <bsd.port.mk>
