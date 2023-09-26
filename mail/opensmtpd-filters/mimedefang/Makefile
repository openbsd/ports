COMMENT=	MIMEDefang integration to the OpenSMTPD daemon

V=		0.2
FILTER_NAME =	mimedefang
DISTNAME =	${FILTER_NAME}-smtpd-filter-${V}
PKGNAME =	filter-${FILTER_NAME}-${V}

CATEGORIES=	mail
HOMEPAGE=	https://mimedefang.org

MAINTAINER=	Giovanni Bechis <gbechis@openbsd.org>

SITES=   	${HOMEPAGE}/releases/opensmtpd/
INSTALL_TARGET=	build install

WRKDIST=	${WRKDIR}/${PKGNAME}

RUN_DEPENDS=	mail/mimedefang \
		mail/p5-OpenSMTPd-Filter

# MIT
PERMIT_PACKAGE=	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
