# $OpenBSD: Makefile,v 1.3 2016/08/03 09:34:39 ajacoutot Exp $

COMMENT=		decentralized service discovery and orchestration

GH_TAGNAME=		v0.7.0
GH_ACCOUNT=		hashicorp
GH_PROJECT=		serf
PKGNAME=		${GH_ACCOUNT}-${DISTNAME}
DIST_SUBDIR=		${GH_PROJECT}
DISTFILES=		${DISTNAME}${EXTRACT_SUFX}
REVISION=		1

CATEGORIES=		sysutils net

HOMEPAGE=		https://www.serfdom.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

GH_DEP +=		armon circbuf bbbad097214e2918d8543d5201d12bfd7bca254d github.com
GH_DEP +=		armon go-metrics 06b60999766278efd6d2b5d8418a58c3d5b99e87 github.com
GH_DEP +=		hashicorp go-msgpack fa3f63826f7c23912c15263591e65d54d080b458 github.com
GH_DEP +=		hashicorp go-syslog 42a2b573b664dbf281bd48c3cc12c086b17a39ba github.com
GH_DEP +=		hashicorp go.net 104dcad90073cd8d1e6828b2af19185b60cf3e29 github.com
GH_DEP +=		hashicorp logutils 0dc08b1671f34c4250ce212759ebd880f743d883 github.com
GH_DEP +=		hashicorp mdns 9d85cf22f9f8d53cb5c81c1b2749f438b2ee333f github.com
GH_DEP +=		hashicorp memberlist 9888dc523910e5d22c5be4f6e34520943df21809 github.com
GH_DEP +=		miekg dns 75e6e86cc601825c5dbcd4e0c209eab180997cd7 github.com
GH_DEP +=		mitchellh cli 8102d0ed5ea2709ade1243798785888175f6e415 github.com
GH_DEP +=		mitchellh mapstructure 281073eb9eb092240d33ef253c404f1cca550309 github.com
GH_DEP +=		ryanuber columnize 983d3a5fab1bf04d1b412465d2d9f8430e2e917e github.com
GH_DEP +=		golang crypto f18420efc3b4f8e9f3d51f6bd2476e92c46260e9 golang.org

MASTER_SITES1=		https://github.com/
.for a b c d in ${GH_DEP}
DISTFILES +=		${a}/${b}/archive/${c}${EXTRACT_SUFX}:1
.endfor

pre-configure:
.for a b c d in ${GH_DEP}
	mkdir -p ${MODGO_WORKSPACE}/src/${d}/${a}
	mv ${WRKDIR}/${b}-${c} ${MODGO_WORKSPACE}/src/${d}/${a}/${b}
. if "${a}" == "golang"
	mkdir -p ${MODGO_WORKSPACE}/src/${d}/x
	mv ${MODGO_WORKSPACE}/src/${d}/${a}/${b} ${MODGO_WORKSPACE}/src/${d}/x/${b}
. endif
.endfor

.include <bsd.port.mk>
