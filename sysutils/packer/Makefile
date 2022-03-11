# [...]/network/mgmt/2018-01-01/network/expressroutecircuitpeerings.go:53:159:
# constant 4294967295 overflows int
ONLY_FOR_ARCHS=		${LP64_ARCHS}

COMMENT=		tool for building machine images

MODGO_MODNAME=		github.com/hashicorp/packer
MODGO_VERSION=		v1.8.0
DISTNAME=		packer-${MODGO_VERSION}

CATEGORIES=		sysutils

HOMEPAGE=		http://www.packer.io

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=		lang/go

.include "modules.inc"

post-install:
	rm ${PREFIX}/bin/{generate-fixer-deprecations,ssh-keygen}
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} \
		${WRKDIR}/github.com/hashicorp/packer@${MODGO_VERSION}/contrib/zsh-completion/_packer \
		${PREFIX}/share/zsh/site-functions/

.include <bsd.port.mk>
