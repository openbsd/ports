COMMENT=		read and convert TNEF files

SHARED_LIBS +=  ytnef                     0.0 # 0.0

DISTNAME=		libytnef-1.9.3
REVISION=		1

GH_ACCOUNT=		Yeraze
GH_PROJECT=		ytnef
GH_COMMIT=		f80f624d373997afa3e3bfc074948b26d171d210

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
