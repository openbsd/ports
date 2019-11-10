# $OpenBSD: Makefile,v 1.3 2019/11/10 14:14:35 ajacoutot Exp $

COMMENT=	thin wrapper for Terraform that provides extra tools

GH_TAGNAME=	v0.21.4
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

# creating a new distfile (needs devel/git, sysutils/dep)
# =======================
# mkdir -p ${HOME}/go/src/github.com/gruntwork-io/
# cd ${HOME}/go/src/github.com/gruntwork-io/
# git clone https://github.com/gruntwork-io/terragrunt.git
# cd terragrunt && git checkout ${GH_TAGNAME}
# ${LOCALBASE}/bin/dep ensure -vendor-only
# rm -rf .git/
# cd .. && mv terragrunt terragrunt-${GH_TAGNAME#v*}
# tar czf terragrunt-${GH_TAGNAME#v*}.tar.gz terragrunt-${GH_TAGNAME#v*}

.include <bsd.port.mk>
