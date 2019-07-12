# $OpenBSD: Makefile,v 1.5 2019/07/12 20:48:33 sthen Exp $

COMMENT =		Nagios plugin to check RabbitMQ

EPOCH =			0
VERSION=		2.0.3
GH_ACCOUNT =		nagios-plugins-rabbitmq
GH_PROJECT =		nagios-plugins-rabbitmq
GH_TAGNAME =		${VERSION}

CATEGORIES =		net

PKGNAME =		check_rabbitmq-${VERSION}

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

NO_TEST =		Yes

CONFIGURE_STYLE =	modbuild

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS =		converters/p5-JSON \
			net/nagios/p5-Nagios-Plugin \
			net/monitoring-plugins \
			www/p5-LWP-Protocol-https

ALL_TARGET =		sources

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios/plugins-rabbitmq
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/check_* \
		${PREFIX}/libexec/nagios/plugins-rabbitmq

.include <bsd.port.mk>
