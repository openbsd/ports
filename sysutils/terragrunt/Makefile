# $OpenBSD: Makefile,v 1.12 2020/03/01 16:38:02 ajacoutot Exp $

COMMENT=	thin wrapper for Terraform that provides extra tools

GH_TAGNAME=	v0.22.5
GH_ACCOUNT=	gruntwork-io
GH_PROJECT=	terragrunt

CATEGORIES=	sysutils net

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go

MODGO_LDFLAGS=	-X main.VERSION=${GH_TAGNAME}

RUN_DEPENDS=	sysutils/terraform/terraform

MASTER_SITES=	https://distfiles.bsdfrog.org/

# creating a new distfile (needs devel/git)
# =======================
# mkdir -p ${HOME}/go/src/github.com/gruntwork-io/
# cd ${HOME}/go/src/github.com/gruntwork-io/
# git clone https://github.com/gruntwork-io/terragrunt.git
# cd terragrunt && git checkout ${GH_TAGNAME}
# go mod init
# go mod vendor
# rm -rf .git/
# cd .. && mv terragrunt terragrunt-${GH_TAGNAME#v*}
# tar czf terragrunt-${GH_TAGNAME#v*}.tar.gz terragrunt-${GH_TAGNAME#v*}

.include <bsd.port.mk>
