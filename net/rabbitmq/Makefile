COMMENT =	highly reliable Enterprise Messaging System

V =		3.13.6
DISTNAME =	rabbitmq-server-${V}
PKGNAME =	rabbitmq-${V}
CATEGORIES =	net

HOMEPAGE =	https://www.rabbitmq.com/

MAINTAINER =	Volker Schlecht <openbsd-ports@schlecht.dev>

# MPL
PERMIT_PACKAGE= Yes

SITES =		https://github.com/rabbitmq/rabbitmq-server/releases/download/v${V}/
EXTRACT_SUFX =	.tar.xz

MODULES =	lang/erlang \
		lang/python

USE_GMAKE =	Yes
CONFIGURE_STYLE = none

BUILD_DEPENDS =	archivers/unzip \
		archivers/zip \
		devel/gmake \
		lang/elixir \
		net/rsync \
		textproc/docbook \
		textproc/docbook-xsl \
		textproc/libxslt \
		textproc/xmlto

MAKE_FLAGS =	MANDIR=${PREFIX}/man \
		RMQ_ROOTDIR=${PREFIX} \
		RMQ_ERLAPP_DIR=${PREFIX}/lib/rabbitmq \
		PYTHON=${MODPY_BIN} \
		VERSION=${V} \
		V=2

MAKE_ENV =	LC_ALL="en_US.UTF-8"

SUBST_VARS +=	V MODERL_ERL

MODPY_ADJ_FILES +=	deps/rabbit_common/codegen.py
MODPY_ADJ_FILES +=	deps/rabbitmq_management/bin/rabbitmqadmin

NO_TEST =	Yes

ALL_TARGET =	all manpages
INSTALL_TARGET = install install-bin

PLUGIN_VERSIONS= \
ACCEPT_VSN	0.3.5 \
ATEN_VSN	0.6.0 \
BASE64URL_VSN	1.0.1 \
COWBOY_VSN	2.12.0 \
COWLIB_VSN	2.13.0 \
CREDENTIALS_OBFUSCATION_VSN	3.4.0 \
CUTTLEFISH_VSN	3.1.0 \
EETCD_VSN	0.3.6 \
ENOUGH_VSN	0.1.0 \
GEN_BATCH_SERVER_VSN	0.8.8 \
GETOPT_VSN	1.0.2 \
GUN_VSN		1.3.3 \
HORUS_VSN	0.2.5 \
JOSE_VSN	1.11.10 \
KHEPRI_VSN	0.14.0 \
KHEPRI_MNESIA_MIGRATION_VSN	0.5.0 \
OBSERVER_CLI_VSN	1.7.3 \
OSIRIS_VSN	1.8.2 \
PROMETHEUS_VSN	4.11.0 \
QUANTILE_ESTIMATOR_VSN	0.2.1 \
RA_VSN		2.13.5 \
RANCH_VSN	2.1.0 \
RECON_VSN	2.5.3 \
REDBUG_VSN	2.0.7 \
SESHAT_VSN	0.6.1 \
STDOUT_FORMATTER_VSN	0.2.4 \
SYSLOG_VSN	4.0.0 \
SYSMON_HANDLER_VSN	1.3.0 \
SYSTEMD_VSN	0.6.1 \
THOAS_VSN	1.0.0

.for _n _v in ${PLUGIN_VERSIONS}
${_n} =		${_v}
RABBIT_${_n:S/_VSN//} = ${_n:S/_VSN//:L}-${_v}
SUBST_VARS +=	RABBIT_${_n:S/_VSN//}
.endfor

pre-configure:
	${SUBST_CMD} ${WRKSRC}/deps/rabbit/scripts/rabbitmq-{server,env}

pre-build:
	ln -fs ${LOCALBASE}/bin/${GMAKE} ${WRKDIR}/bin/make

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/rabbitmq \
	    ${PREFIX}/share/bash-completions/completions \
	    ${PREFIX}/share/zsh/site-functions
	cd ${WRKBUILD}/deps/rabbit/docs && \
	    ${INSTALL_DATA} *.8 ${PREFIX}/man/man8/ && \
	    ${INSTALL_DATA} *.5 ${PREFIX}/man/man5/ && \
	    ${INSTALL_DATA} *conf*example ${PREFIX}/share/examples/rabbitmq
	mv ${PREFIX}/lib/rabbitmq/{INSTALL,LICENSE*} \
	    ${PREFIX}/share/doc/rabbitmq
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/rabbitmq-env.conf \
	    ${PREFIX}/share/examples/rabbitmq/rabbitmq-env.conf
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/rabbitmq.conf \
	    ${PREFIX}/share/examples/rabbitmq/rabbitmq.conf
	sed -i 's,/usr/lib/rabbitmq/bin/rabbitmqctl,${PREFIX}/bin/rabbitmqctl,g' \
	    ${PREFIX}/autocomplete/bash_autocomplete.sh
	mv ${PREFIX}/autocomplete/bash_autocomplete.sh \
	    ${PREFIX}/share/bash-completions/completions/rabbitmq
	mv ${PREFIX}/autocomplete/zsh_autocomplete.sh \
	    ${PREFIX}/share/zsh/site-functions/_rabbitmq
	rm -r ${PREFIX}/autocomplete

.include <bsd.port.mk>
