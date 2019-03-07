# $OpenBSD: Makefile,v 1.2 2019/03/07 07:20:07 ajacoutot Exp $

GH_ACCOUNT=		exoscale
GH_PROJECT=		terraform-provider-exoscale

PROVIDER=		exoscale
GH_TAGNAME=		v0.10.0

pre-configure:
	sed -i "s,terraform-providers,exoscale," ${WRKDIST}/main.go

.include <bsd.port.mk>
