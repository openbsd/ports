# $OpenBSD: Makefile,v 1.1.1.1 2017/06/23 12:37:09 reyk Exp $

COMMENT=		Microsoft Azure Linux Agent

V=			2.2.13
GH_ACCOUNT=		Azure
GH_PROJECT=		WALinuxAgent
GH_TAGNAME=		v${V}
PKGNAME=		waagent-${V}

CATEGORIES=		sysutils

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

MODPY_ADJ_FILES=	bin/waagent

# LibreSSL has removed CMS support
RUN_DEPENDS=		security/openssl

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
