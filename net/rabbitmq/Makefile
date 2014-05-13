# $OpenBSD: Makefile,v 1.19 2014/05/13 22:57:26 sthen Exp $

COMMENT =	highly reliable Enterprise Messaging System

V =		2.8.4
DISTNAME =	rabbitmq-server-$V
PKGNAME =	rabbitmq-$V
CATEGORIES =	net
REVISION =	1

HOMEPAGE =	http://www.rabbitmq.com/

MAINTAINER =	Piotr Sikora <piotr.sikora@frickle.com>

# MPL
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =	http://www.rabbitmq.com/releases/rabbitmq-server/v${V}/

MODULES =	lang/python
MODPY_RUNDEP =	No

USE_GMAKE =	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE = none

BUILD_DEPENDS =	${RUN_DEPENDS} \
		archivers/unzip \
		archivers/zip \
		textproc/docbook \
		textproc/docbook-xsl \
		textproc/libxslt \
		textproc/xmlto

RUN_DEPENDS =	lang/erlang>=15b.01p0v0

MAKE_ENV =	PYTHON=${MODPY_BIN} VERSION=${V}

RABBITUSER =	_rabbitmq

SUBST_VARS +=	RABBITUSER V

# help 'make update-patches' work.  if upstream do this often,
# consider PATCHORIG and regenerating patches.
post-extract:
	rm ${WRKSRC}/plugins-src/mochiweb-wrapper/mochiweb-git/src/mochiweb_request.erl.orig

pre-build:
	${SUBST_CMD} ${WRKSRC}/scripts/rabbitmqctl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rabbitmq
	@for file in INSTALL LICENSE*; do \
		mv ${PREFIX}/lib/rabbitmq/$$file \
			${PREFIX}/share/doc/rabbitmq; \
	done
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rabbitmq
	${INSTALL_DATA} ${FILESDIR}/rabbitmq.conf \
		${PREFIX}/share/examples/rabbitmq/rabbitmq-env.conf

.include <bsd.port.mk>
