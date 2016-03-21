# $OpenBSD: Makefile,v 1.1.1.1 2016/03/21 07:21:26 sebastia Exp $

COMMENT=		Nagios plugin to check RabbitMQ

GH_ACCOUNT =		nagios-plugins-rabbitmq
GH_PROJECT =		nagios-plugins-rabbitmq
GH_TAGNAME =		0c357495d817df4db9ed6392559f2da7507383a4
CATEGORIES=		net
PKGNAME=		check_rabbitmq-20150224

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

NO_TEST=		Yes

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS=		converters/p5-JSON \
			net/nagios/p5-Nagios-Plugin \
			net/monitoring-plugins \
			www/p5-LWP-Protocol-https

ALL_TARGET =		sources

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios/plugins-rabbitmq
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/check_* \
		${PREFIX}/libexec/nagios/plugins-rabbitmq

.include <bsd.port.mk>
