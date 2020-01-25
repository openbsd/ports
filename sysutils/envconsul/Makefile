# $OpenBSD: Makefile,v 1.2 2020/01/25 08:26:09 ajacoutot Exp $

COMMENT=		start subprocess with envvar populated from Consul and Vault

GH_TAGNAME=		v0.9.2
GH_ACCOUNT=		hashicorp
GH_PROJECT=		envconsul

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2.0
PERMIT_PACKAGE=		Yes

WANTLIB += c pthread

MODULES=		lang/go

# go/src/github.com/hashicorp/envconsul/Makefile
MODGO_LDFLAGS +=	-X github.com/hashicorp/envconsul/version.Name=${GH_PROJECT}
MODGO_LDFLAGS +=	-X github.com/hashicorp/envconsul/version.GitCommit=${GH_TAGNAME}

MASTER_SITES=		https://distfiles.bsdfrog.org/

# creating a new distfile (needs devel/git)
# =======================
# mkdir -p ${HOME}/go/src/github.com/hashicorp/
# cd ${HOME}/go/src/github.com/hashicorp/
# git clone https://github.com/hashicorp/envconsul.git
# cd envconsul && git checkout ${GH_TAGNAME}
# go mod vendor
# rm -rf .git/
# cd .. && mv envconsul envconsul-${GH_TAGNAME#v*}
# tar czf envconsul-${GH_TAGNAME#v*}.tar.gz envconsul-${GH_TAGNAME#v*}

.include <bsd.port.mk>
