# $OpenBSD: Makefile,v 1.39 2020/05/02 06:30:05 ajacoutot Exp $

COMMENT=		secure secret storage

GH_TAGNAME=		v1.4.1
GH_ACCOUNT=		hashicorp
GH_PROJECT=		vault
REVISION=		0

### Vault UI
# unversioned DISTFILE
DIST_SUBDIR=		vault-${GH_TAGNAME}
MODGO_FLAGS +=		-tags=ui
MASTER_SITES0=		https://distfiles.tristero.se/
EXTRACT_ONLY=		${DISTNAME}${EXTRACT_SUFX}
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} \
			bindata_assetfs-${GH_TAGNAME}.go:0

CATEGORIES=		security net

HOMEPAGE=		https://www.vaultproject.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c pthread

MODULES=		lang/go

# go/src/github.com/hashicorp/vault/version/version.go
MODGO_LDFLAGS +=	-X github.com/hashicorp/vault/version.GitDescribe=${GH_TAGNAME:S/v//}
MODGO_LDFLAGS +=	-X github.com/hashicorp/vault/version.VersionPrerelease="" # empty

post-extract:
	install -m644 ${FULLDISTDIR}/bindata_assetfs-${GH_TAGNAME}.go \
		${WRKDIST}/http/bindata_assetfs.go

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vault
	${INSTALL_DATA} ${FILESDIR}/vault.hcl \
		${PREFIX}/share/examples/vault

.include <bsd.port.mk>
