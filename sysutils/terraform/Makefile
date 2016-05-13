# $OpenBSD: Makefile,v 1.8 2016/05/13 17:10:38 ajacoutot Exp $

COMMENT=		tool for building, changing, and versioning infrastructure

GH_TAGNAME=		v0.6.16
GH_ACCOUNT=		hashicorp
GH_PROJECT=		terraform

CATEGORIES=		sysutils net

HOMEPAGE=		https://www.terraform.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

PROVIDERS=		atlas aws azure azurerm chef clc cloudflare cloudstack \
			cobbler consul datadog digitalocean dme dnsimple \
			docker dyn fastly github google heroku influxdb \
			librato mailgun mysql null openstack packet postgresql \
			powerdns rundeck softlayer statuscake template \
			terraform tls triton ultradns vcd vsphere

PROVISIONERS=		chef file local-exec remote-exec

post-build:
.for provider in ${PROVIDERS}
	cd ${WRKSRC} && \
		${MODGO_CMD} build -o bin/terraform-provider-${provider} \
		github.com/hashicorp/terraform/builtin/bins/provider-${provider}
.endfor
.for provisioner in ${PROVISIONERS}
	cd ${WRKSRC} && \
		${MODGO_CMD} build -o bin/terraform-provisioner-${provisioner} \
		github.com/hashicorp/terraform/builtin/bins/provisioner-${provisioner}
.endfor

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/terraform-* \
		${PREFIX}/bin/

.include <bsd.port.mk>
