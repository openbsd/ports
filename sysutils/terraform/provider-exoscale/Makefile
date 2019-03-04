# $OpenBSD: Makefile,v 1.1.1.1 2019/03/04 17:05:42 ajacoutot Exp $

GH_ACCOUNT=		exoscale
GH_PROJECT=		terraform-provider-exoscale
MODGO_GOPATH=		${MODGO_WORKSPACE}:${MODGO_PACKAGE_PATH}
PKGNAME=		terraform-provider-exoscale-0.10.0beta1

PROVIDER=		exoscale
GH_TAGNAME=		v0.10.0-beta1

pre-configure:
	sed -i "s,terraform-providers,exoscale," ${WRKDIST}/main.go

.include <bsd.port.mk>
