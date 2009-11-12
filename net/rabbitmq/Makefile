# $OpenBSD: Makefile,v 1.1.1.1 2009/11/12 13:10:33 msf Exp $

COMMENT =	highly reliable Enterprise Messaging System

V =		1.6.0
DISTNAME =	rabbitmq-server-$V
PKGNAME =	rabbitmq-$V
CATEGORIES =	net

HOMEPAGE =	http://www.rabbitmq.com/

MAINTAINER =	Mathieu Sauve-Frankel <msf@openbsd.org>

# MPL
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =	http://www.rabbitmq.com/releases/rabbitmq-server/v${V}/

MODULES =	lang/python
MODPY_RUNDEPS =	No

USE_GMAKE =	Yes

CONFIGURE_STYLE = none

BUILD_DEPENDS =	${RUN_DEPENDS} \
		::devel/py-simplejson
RUN_DEPENDS =	::lang/erlang

MAKE_ENV =	PYTHON=${MODPY_BIN} 

pre-build:
	@${SUBST_CMD} ${WRKSRC}/scripts/rabbitmqctl \
		${WRKSRC}/scripts/rabbitmq-multi \
		${WRKSRC}/scripts/rabbitmq-server

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rabbitmq
	@for file in INSTALL LICENSE LICENSE-MPL-RabbitMQ ; do \
		mv ${PREFIX}/lib/rabbitmq/$$file \
			${PREFIX}/share/doc/rabbitmq; \
	done
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rabbitmq
	${INSTALL_DATA} ${FILESDIR}/rabbitmq.conf \
		${PREFIX}/share/examples/rabbitmq/

.include <bsd.port.mk>
