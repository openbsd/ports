# $OpenBSD: Makefile,v 1.3 2016/08/03 09:34:39 ajacoutot Exp $

# XXX patch-temporary_hack-stat_openbsd_go and patch-temporary_hack_stat_unsupported_go
# have been renamed manually to prevent "tar: File name too long for ustar"
# when creating ports.tar.gz

COMMENT=		service discovery and configuration tool

GH_TAGNAME=		v0.6.4
GH_ACCOUNT=		hashicorp
GH_PROJECT=		consul
REVISION=		0

CATEGORIES=		sysutils net

HOMEPAGE=		https://www.consul.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/consul
	${SUBST_CMD} -c -m 0640 ${FILESDIR}/config.json.in \
		${PREFIX}/share/examples/consul/config.json

.include <bsd.port.mk>
