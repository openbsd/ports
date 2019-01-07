# $OpenBSD: Makefile,v 1.21 2019/01/07 10:49:50 ajacoutot Exp $

COMMENT=		secure secret storage

GH_TAGNAME=		v1.0.1
GH_ACCOUNT=		hashicorp
GH_PROJECT=		vault

CATEGORIES=		security net

HOMEPAGE=		https://www.vaultproject.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

# go/src/github.com/hashicorp/vault/version/version.go
MODGO_LDFLAGS +=	-X github.com/hashicorp/vault/version.GitDescribe=${GH_TAGNAME:S/v//}
MODGO_LDFLAGS +=	-X github.com/hashicorp/vault/version.VersionPrerelease="" # empty

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vault
	${INSTALL_DATA} ${FILESDIR}/vault.hcl \
		${PREFIX}/share/examples/vault

.include <bsd.port.mk>
