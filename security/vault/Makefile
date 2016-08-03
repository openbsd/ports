# $OpenBSD: Makefile,v 1.3 2016/08/03 09:34:39 ajacoutot Exp $

COMMENT=		secure secret storage

GH_TAGNAME=		v0.5.2
GH_ACCOUNT=		hashicorp
GH_PROJECT=		vault
REVISION=		1

CATEGORIES=		security net

HOMEPAGE=		https://www.vaultproject.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vault
	${INSTALL_DATA} ${FILESDIR}/vault.hcl \
		${PREFIX}/share/examples/vault

.include <bsd.port.mk>
