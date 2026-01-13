COMMENT =		instant terminal sharing

MODGO_MODNAME =		github.com/owenthereal/upterm
MODGO_VERSION =		v0.21.1

DISTNAME =		upterm-${MODGO_VERSION}

CATEGORIES =		net

HOMEPAGE =		https://upterm.dev

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB=		c pthread

MODULES =		lang/go

NO_TEST =		Yes

post-build:
	cd ${WRKSRC} && ../../../go/bin/gendoc

post-install:
	${INSTALL_MAN} ${WRKSRC}/etc/man/man1/*.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/uptermd
	${INSTALL_DATA} ${FILESDIR}/uptermd.yaml.sample \
		${PREFIX}/share/examples/uptermd
	${SUBST_CMD} ${PREFIX}/share/examples/uptermd/uptermd.yaml.sample
	rm -f ${PREFIX}/share/examples/uptermd/uptermd.yaml.sample.beforesubst
	rm -f ${PREFIX}/bin/{uptermd-fly,gendoc}

.include "modules.inc"
.include <bsd.port.mk>
