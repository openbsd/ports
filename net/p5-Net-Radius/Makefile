# $OpenBSD: Makefile,v 1.13 2020/04/08 18:25:48 espie Exp $

COMMENT=	Perl interface to Radius

DISTNAME=	Net-Radius-2.103
REVISION=	0

CATEGORIES=	net devel

MAINTAINER=	Alexander Bluhm <bluhm@openbsd.org>

# perl artistic license
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*
MODCPAN_EXAMPLES=	Yes
TEST_DEPENDS=	devel/p5-Test-Warn

DATADIR=	${PREFIX}/share/p5-Net-Radius
DICTS=		dictionary \
		dictionary.3com \
		dictionary.3com-o \
		dictionary.3gpp \
		dictionary.3gpp2 \
		dictionary.acc \
		dictionary.alcatel \
		dictionary.alteon \
		dictionary.altiga \
		dictionary.aptis \
		dictionary.ascend \
		dictionary.base \
		dictionary.bay \
		dictionary.bintec \
		dictionary.bristol \
		dictionary.broadsoft \
		dictionary.cablelabs \
		dictionary.cabletron \
		dictionary.cisco \
		dictionary.cisco.bbsm \
		dictionary.cisco.vpn3000 \
		dictionary.cisco.vpn5000 \
		dictionary.colubris \
		dictionary.columbia_university \
		dictionary.compat \
		dictionary.cosine \
		dictionary.erx \
		dictionary.extreme \
		dictionary.foundry \
		dictionary.freeradius \
		dictionary.gandalf \
		dictionary.garderos \
		dictionary.gemtek \
		dictionary.huawei \
		dictionary.itk \
		dictionary.juniper \
		dictionary.karlnet \
		dictionary.livingston \
		dictionary.localweb \
		dictionary.merit \
		dictionary.microsoft \
		dictionary.mikrotik \
		dictionary.navini \
		dictionary.netscreen \
		dictionary.nokia \
		dictionary.nomadix \
		dictionary.propel \
		dictionary.quintum \
		dictionary.redback \
		dictionary.redcreek \
		dictionary.shasta \
		dictionary.shiva \
		dictionary.sonicwall \
		dictionary.springtide \
		dictionary.t_systems_nova \
		dictionary.telebit \
		dictionary.trapeze \
		dictionary.tunnel \
		dictionary.unisphere \
		dictionary.unix \
		dictionary.usr \
		dictionary.valemount \
		dictionary.versanet \
		dictionary.wispr \
		dictionary.xedia
DOCDIR=		${PREFIX}/share/doc/p5-Net-Radius
DOCS=		README \
		README.3COM \
		README.VSA \
		README.broken \
		README.debian \
		README.packets \
		README.server

post-install:
	${INSTALL_DATA_DIR} ${DATADIR}
.for file in ${DICTS}
	${INSTALL_DATA} ${WRKSRC}/dicts/${file} ${DATADIR}
.endfor
	${INSTALL_DATA_DIR} ${DOCDIR}
.for file in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCDIR}
.endfor
	${MODCPAN_POST_INSTALL}

.include <bsd.port.mk>
