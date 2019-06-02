# $OpenBSD: Makefile,v 1.32 2019/06/02 08:42:29 ajacoutot Exp $

COMMENT =	highly reliable Enterprise Messaging System

V =		3.6.15
DISTNAME =	rabbitmq-server-$V
PKGNAME =	rabbitmq-$V
CATEGORIES =	net

HOMEPAGE =	https://www.rabbitmq.com/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MPL
PERMIT_PACKAGE_CDROM = Yes

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

#MODPY_ADJ_FILES +=	plugins-src/rabbitmq-amqp1.0/codegen.py
#MODPY_ADJ_FILES +=	plugins-src/rabbitmq-management/bin/rabbitmqadmin

NO_TEST =	Yes

FAKE_FLAGS =	DESTDIR=''

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

.include <bsd.port.mk>
