# $OpenBSD: Makefile,v 1.9 2016/05/21 01:47:42 czarkoff Exp $

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

BINARIES=		${PROVIDERS:%=provider-%} ${PROVISIONERS:%=provisioner-%}

_MAIN=			github.com/${GH_ACCOUNT}/${GH_PROJECT}
WRKSRC=			${MODGO_WORKSPACE}/src/${_MAIN}
ALL_TARGET=		${_MAIN} ${BINARIES:%=${_MAIN}/builtin/bins/%}

post-install:
.for binary in ${BINARIES}
	mv ${PREFIX}/bin/${binary} ${PREFIX}/bin/terraform-${binary}
.endfor

.include <bsd.port.mk>
