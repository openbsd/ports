# $OpenBSD: Makefile,v 1.9 2019/07/12 20:48:26 sthen Exp $

COMMENT=		BGP route injector (supporting flow routes, etc)

MODPY_EGG_VERSION=	4.1.2
GH_ACCOUNT=		exa-networks
GH_PROJECT=		exabgp
GH_TAGNAME=		${MODPY_EGG_VERSION}
DISTNAME=		exabgp-${MODPY_EGG_VERSION}

CATEGORIES=		net

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

TEST_DEPENDS=		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR}

# Generate current version's exabgp.env in post-extract so we can patch
# it rather than using a static copy in FILESDIR. The rc script uses
# exabgp.daemon.env which has daemonize/logfile/etc setup, this is
# separate to default exabgp.env to avoid getting in the way of ad-hoc
# "foreground" configurations.
post-extract:
	${WRKSRC}/sbin/exabgp --fi > ${WRKSRC}/exabgp.env
	cp ${WRKSRC}/exabgp.env ${WRKSRC}/exabgp.daemon.env

pre-configure:
	cd ${WRKSRC}; ${SUBST_CMD} \
		dev/bin/python-profile \
		dev/bin/pythonstats \
		etc/exabgp/example-healthcheck.conf \
		lib/exabgp/application/bgp.py \
		lib/exabgp/application/cli.py \
		lib/exabgp/application/healthcheck.py \
		lib/exabgp/configuration/usage.py \
		lib/exabgp/vendoring/profiler.py
	cd ${WRKSRC}; \
		find ${WRKSRC} -type f -perm -111 -exec ${MODPY_BIN_ADJ} {} +

post-install:
	${INSTALL_DATA} ${FILESDIR}/exabgp.conf ${PREFIX}/share/examples/exabgp/
	${INSTALL_DATA} ${WRKSRC}/exabgp*env ${PREFIX}/share/examples/exabgp/
	${INSTALL_DATA} ${WRKSRC}/etc/exabgp/*.conf ${PREFIX}/share/examples/exabgp/etc/
	find ${WRKINST}${MODPY_SITEPKG} \( -name '*.orig' -or -name '*.beforesubst' \) -delete
.for i in 1 5
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.$i ${PREFIX}/man/man$i/
.endfor

do-test:
	cd ${WRKSRC}; exabgp_log_enable=false nosetests${MODPY_BIN_SUFFIX} --with-coverage ./qa/tests/*_test.py
	cd ${WRKSRC}; ./qa/bin/functional run

.include <bsd.port.mk>
