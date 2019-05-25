# $OpenBSD: Makefile,v 1.3 2019/05/25 10:35:20 ajacoutot Exp $

GH_ACCOUNT=		exoscale
GH_PROJECT=		terraform-provider-exoscale

PROVIDER=		exoscale
GH_TAGNAME=		v0.11.0

pre-configure:
	sed -i "s,terraform-providers,exoscale," ${WRKDIST}/main.go

.include <bsd.port.mk>
