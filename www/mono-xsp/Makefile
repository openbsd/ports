# $OpenBSD: Makefile,v 1.10 2019/07/12 20:50:48 sthen Exp $

COMMENT=	ASP.NET implementations for Mono

V=		3.8
DISTNAME=	${GH_PROJECT}-${V}
PKGNAME=	mono-xsp-${V}
REVISION=	0

SHARED_LIBS +=  fpm_helper		0.0 # 0.0

GH_ACCOUNT=	mono
GH_PROJECT=	xsp
GH_COMMIT=	e272a2c006211b6b03be2ef5bbb9e3f8fefd0768

CATEGORIES=	www devel

HOMEPAGE=	http://www.mono-project.com/ASP.NET

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c

MODULES=	lang/mono

CONFIGURE_STYLE=gnu

USE_GMAKE=	Yes

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS+=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/gettext,-runtime \
			devel/libtool \
			misc/findutils \
			shells/bash

pre-configure:
	@ln -fs /usr/local/bin/gfind ${WRKDIR}/bin/find
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		./autogen.sh

.include <bsd.port.mk>
