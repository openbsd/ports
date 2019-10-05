# $OpenBSD: Makefile,v 1.30 2019/10/05 09:12:45 ajacoutot Exp $

COMMENT=		secure secret storage

GH_TAGNAME=		v1.2.3
GH_ACCOUNT=		hashicorp
GH_PROJECT=		vault

### Vault UI
MODGO_FLAGS +=		-tags=ui
#MASTER_SITES0=		https://github.com/swills/vaultui/raw/${GH_TAGNAME}/http/
MASTER_SITES0=		https://github.com/swills/vaultui/raw/v1.1.2/http/
EXTRACT_ONLY=		${DISTNAME}${EXTRACT_SUFX}
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} \
			bindata_assetfs.go:0

CATEGORIES=		security net

HOMEPAGE=		https://www.vaultproject.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=		lang/go

# go/src/github.com/hashicorp/vault/version/version.go
MODGO_LDFLAGS +=	-X github.com/hashicorp/vault/version.GitDescribe=${GH_TAGNAME:S/v//}
MODGO_LDFLAGS +=	-X github.com/hashicorp/vault/version.VersionPrerelease="" # empty

post-extract:
	install -m644 ${DISTDIR}/bindata_assetfs.go ${WRKDIST}/http/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vault
	${INSTALL_DATA} ${FILESDIR}/vault.hcl \
		${PREFIX}/share/examples/vault

.include <bsd.port.mk>
