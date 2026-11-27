COMMENT=	MIMEDefang integration to the OpenSMTPD daemon

V=		1.1
FILTER_NAME =	mimedefang
DISTNAME =	Mail-MIMEDefang-OpenSMTPD-${V}
PKGNAME =	filter-${FILTER_NAME}-${V}

CATEGORIES=	mail
HOMEPAGE=	https://mimedefang.org

MAINTAINER=	Giovanni Bechis <gbechis@openbsd.org>

SITES=   	${HOMEPAGE}/releases/opensmtpd/

CONFIGURE_STYLE=perl
RUN_DEPENDS=	mail/mimedefang \
		mail/p5-OpenSMTPd-Filter

# MIT
PERMIT_PACKAGE=	Yes

.include <bsd.port.mk>
