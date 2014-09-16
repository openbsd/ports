# $OpenBSD: Makefile,v 1.24 2014/09/16 09:07:03 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	fast and stable PHP opcode cacher

VERSION=	3.1.0
DISTNAME=	xcache-${VERSION}
CATEGORIES=	www
MASTER_SITES=	http://xcache.lighttpd.net/pub/Releases/${VERSION}/
FAKE_AS_ROOT =	Yes

HOMEPAGE=	http://xcache.lighttpd.net/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/php

BUILD_DEPENDS+=		${MODGNU_AUTOCONF_DEPENDS} \
			devel/re2c>=0.13.4 \
			devel/gindent

WEBROOT=		${VARBASE}/www
SUBST_VARS=		WEBROOT

LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-xcache
CONFIGURE_ENV=		AUTOCONF_VERSION=${AUTOCONF_VERSION}

DESTDIRNAME=	INSTALL_ROOT

NO_TEST=	Yes

FLAVORS=	constant coverager
FLAVOR?=

.if ${FLAVOR:Mconstant}
CONFIGURE_ARGS+=	--enable-xcache-constant
.endif

.if ${FLAVOR:Mcoverager}
CONFIGURE_ARGS+=	--enable-xcache-coverager
.endif

MODPHP_DO_PHPIZE=	Yes
MODPHP_DO_SAMPLE=	xcache
MESSAGE=		${PKGDIR}/MESSAGE

post-extract:
	@ln -sf ${LOCALBASE}/bin/gindent ${WRKDIR}/bin/indent

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}${WEBROOT}/xcache
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/php-${MODPHP_VERSION}
	cd ${WRKSRC}/htdocs && cp -R * ${WRKINST}${WEBROOT}/xcache
	chown -R ${SHAREOWN}:${SHAREGRP} ${WRKINST}${WEBROOT}/xcache/*
	chmod -R ${SHAREMODE} ${WRKINST}${WEBROOT}/xcache/*
	${INSTALL_DATA} ${WRKSRC}/xcache.ini \
		${PREFIX}/share/examples/php-${MODPHP_VERSION}

.include <bsd.port.mk>
