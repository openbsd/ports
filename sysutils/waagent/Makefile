# $OpenBSD: Makefile,v 1.5 2020/06/05 19:51:29 sthen Exp $

COMMENT=		Microsoft Azure Linux Agent

V=			2.2.13
GH_ACCOUNT=		Azure
GH_PROJECT=		WALinuxAgent
GH_TAGNAME=		v${V}
PKGNAME=		waagent-${V}
REVISION=		1

CATEGORIES=		sysutils

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

MODPY_ADJ_FILES=	bin/waagent

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/azurelinuxagent/common/osutil/openbsd.py

post-install:
	rm -f ${WRKINST}/${PREFIX}/lib/\
		python${MODPY_VERSION}/site-packages/__main__.{py,pyc}
	rm -f ${PREFIX}/sbin/waagent2.0
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/waagent
	mv ${WRKINST}/etc/waagent.conf \
		${PREFIX}/share/examples/waagent/waagent.conf

.include <bsd.port.mk>
