# $OpenBSD: Makefile,v 1.40 2022/01/08 12:24:10 ajacoutot Exp $

BROKEN =	builds but not yet working.
# we had rabbitmq-3.6.15 which used erlang 19, which was removed due to
# not building with -fno-commons, leaving only erlang 21 in ports.
# 3.8.8 is the newest version that officially supports erlang 21;
# there maybe a couple more versions that do still run with it.
# newest rabbitmq versions would require erlang 22 or 23 to be ported.
# this update still needs more work as it dies shortly after startup.

COMMENT =	highly reliable Enterprise Messaging System

V =		3.8.8
DISTNAME =	rabbitmq-server-$V
PKGNAME =	rabbitmq-$V
CATEGORIES =	net
REVISION =	1

HOMEPAGE =	https://www.rabbitmq.com/

# MPL
PERMIT_PACKAGE= Yes

MASTER_SITES =	https://github.com/rabbitmq/rabbitmq-server/releases/download/v$V/
EXTRACT_SUFX =	.tar.xz

MODULES =	lang/erlang \
		lang/python
MODERL_VERSION = 21

USE_GMAKE =	Yes
CONFIGURE_STYLE = none

BUILD_DEPENDS =	archivers/unzip \
		archivers/zip \
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

SUBST_VARS +=	V MODERL_ERL

MODPY_ADJ_FILES +=	deps/rabbit_common/codegen.py
MODPY_ADJ_FILES +=	deps/rabbitmq_management/bin/rabbitmqadmin

NO_TEST =	Yes

ALL_TARGET =	all manpages
INSTALL_TARGET = install install-bin

pre-configure:
	${SUBST_CMD} ${WRKSRC}/deps/rabbit/scripts/rabbitmq-{server,env}
	sed -i 's,/var/lib/rabbitmq,/var/rabbitmq,g' \
	    ${WRKSRC}/scripts/rabbitmq-server-ha.ocf

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
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/rabbitmq.conf \
	    ${PREFIX}/share/examples/rabbitmq/rabbitmq-env.conf
	sed -i 's,/usr/lib/rabbitmq/bin/rabbitmqctl,${PREFIX}/bin/rabbitmqctl,g' \
	    ${PREFIX}/autocomplete/bash_autocomplete.sh
	mv ${PREFIX}/autocomplete/bash_autocomplete.sh \
	    ${PREFIX}/share/bash-completions/completions/rabbitmq
	mv ${PREFIX}/autocomplete/zsh_autocomplete.sh \
	    ${PREFIX}/share/zsh/site-functions/_rabbitmq
	rm -r ${PREFIX}/autocomplete

.include <bsd.port.mk>
