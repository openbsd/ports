COMMENT=		read and convert TNEF files

SHARED_LIBS +=  ytnef                     0.0 # 0.0

V=			2.1.3

DISTNAME=		libytnef-${V}

GH_ACCOUNT=		Yeraze
GH_PROJECT=		ytnef
GH_TAGNAME=		v${V}

CATEGORIES=		converters mail

MAINTAINER=		Robert Nagy <robert@openbsd.org>

RUN_DEPENDS=		mail/p5-MIME-tools

WANTLIB+=		c

# GPLv2
PERMIT_PACKAGE=	Yes

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.15
CONFIGURE_STYLE=	autoreconf

do-test:
	cd ${WRKSRC}/test-data && /bin/sh test.sh

.include <bsd.port.mk>
