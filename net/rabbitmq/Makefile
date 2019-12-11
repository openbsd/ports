# $OpenBSD: Makefile,v 1.34 2019/12/11 14:28:36 zhuk Exp $

COMMENT =	highly reliable Enterprise Messaging System

V =		3.6.15
REVISION =	1
DISTNAME =	rabbitmq-server-$V
PKGNAME =	rabbitmq-$V
CATEGORIES =	net

HOMEPAGE =	https://www.rabbitmq.com/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MPL
PERMIT_PACKAGE= Yes

MASTER_SITES =	https://www.rabbitmq.com/releases/rabbitmq-server/v${V}/
EXTRACT_SUFX =	.tar.xz

MODULES =	lang/erlang \
		lang/python
MODERL_VERSION = 19
MODPY_RUNDEP =	No

USE_GMAKE =	Yes
CONFIGURE_STYLE = none

BUILD_DEPENDS =	archivers/unzip \
		archivers/zip \
		net/rsync \
		textproc/docbook \
		textproc/docbook-xsl \
		textproc/libxslt \
		textproc/xmlto

MAKE_ENV =	PYTHON=${MODPY_BIN} VERSION=${V} V=1

RABBITUSER =	_rabbitmq

SUBST_VARS +=	RABBITUSER V

MODPY_ADJ_FILES +=	deps/rabbit_common/codegen.py
MODPY_ADJ_FILES +=	deps/rabbitmq_management/bin/rabbitmqadmin

NO_TEST =	Yes

FAKE_FLAGS =	DESTDIR=''

ALL_TARGET =	all manpages

pre-build:
	${SUBST_CMD} ${WRKSRC}/deps/rabbit/scripts/rabbitmqctl \
		${WRKSRC}/deps/rabbit/scripts/rabbitmq-defaults

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rabbitmq
	for file in INSTALL LICENSE*; do \
		mv ${PREFIX}/lib/rabbitmq/$$file \
			${PREFIX}/share/doc/rabbitmq; \
	done
	for f in rabbitmqctl rabbitmq-defaults rabbitmq-env rabbitmq-plugins \
			rabbitmq-server; do \
		cd ${PREFIX}/sbin && ln -s ../lib/rabbitmq/sbin/$$f \
			$$f; \
	done
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rabbitmq
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/rabbitmq.conf \
		${PREFIX}/share/examples/rabbitmq/rabbitmq-env.conf
	${INSTALL_DATA} ${WRKBUILD}/deps/rabbit/docs/*.1 \
		${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKBUILD}/deps/rabbit/docs/*.5 \
		${PREFIX}/man/man5/

.include <bsd.port.mk>
