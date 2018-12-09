# $OpenBSD: Makefile,v 1.2 2018/12/09 09:30:07 ajacoutot Exp $

COMMENT=		read and convert TNEF files

SHARED_LIBS +=  ytnef                     0.0 # 0.0

DISTNAME=		libytnef-1.9.3

GH_ACCOUNT=		Yeraze
GH_PROJECT=		ytnef
GH_COMMIT=		24fe30e592a7a840b415dbbc16ba47c7a882bb38

CATEGORIES=		converters mail

MAINTAINER=		Robert Nagy <robert@openbsd.org>

BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

RUN_DEPENDS=		mail/p5-MIME-tools

WANTLIB+=		c

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.15
CONFIGURE_STYLE=	gnu

pre-configure:
	cd ${WRKSRC} && env -i ${AUTOCONF_ENV} autoreconf -fi

do-test:
	cd ${WRKSRC}/test-data && /bin/sh test.sh

.include <bsd.port.mk>
