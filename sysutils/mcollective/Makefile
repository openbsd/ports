# $OpenBSD: Makefile,v 1.33 2015/08/19 07:22:22 jasper Exp $

BROKEN-alpha=	SIGABRT during make fake
COMMENT=	framework for server orchestration/parallel job execution

DISTNAME=	mcollective-2.8.3

CATEGORIES=	sysutils

HOMEPAGE=	http://www.puppetlabs.com/mcollective

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.puppetlabs.com/mcollective/

MODULES=	lang/ruby

NO_BUILD=	Yes
BUILD_DEPENDS=	lang/ruby/${MODRUBY_REV}
RUN_DEPENDS=	net/ruby-stomp,${MODRUBY_FLAVOR}>=1.3.4

PKG_ARCH=	*
NO_TEST=	Yes
SUBST_VARS +=	RUBY

MODRUBY_ADJ_FILES=mco mcollectived

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ext/Makefile \
		${WRKSRC}/etc/server.cfg.dist \
		${WRKSRC}/etc/client.cfg.dist \

do-install:
	cd ${WRKSRC} && ${ALL_FAKE_FLAGS} ${RUBY} install.rb \
		--no-rdoc \
		--destdir=${WRKINST} \
		--plugindir=${TRUEPREFIX}/libexec/mcollective/
	mv ${WRKINST}${SYSCONFDIR}/mcollective \
		${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-mcollective/

.include <bsd.port.mk>
