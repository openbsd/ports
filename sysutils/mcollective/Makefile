# $OpenBSD: Makefile,v 1.21 2014/05/25 19:13:50 jasper Exp $

COMMENT=	framework for server orchestration/parallel job execution

DISTNAME=	mcollective-2.5.1
REVISION=	0

CATEGORIES=	sysutils

HOMEPAGE=	http://www.puppetlabs.com/mcollective

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.puppetlabs.com/mcollective/

MODULES=	lang/ruby
MODRUBY_REV=	2.0

RUN_DEPENDS=	net/ruby-stomp,${MODRUBY_FLAVOR}>=1.3.2

PKG_ARCH=	*
NO_TEST=	Yes
SUBST_VARS +=	RUBY

MODRUBY_ADJ_FILES=mco mcollectived

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ext/Makefile \
		${WRKSRC}/etc/server.cfg.dist \
		${WRKSRC}/etc/client.cfg.dist \

do-install:
	@cd ${WRKSRC} && ${ALL_FAKE_FLAGS} ${RUBY} install.rb \
		--destdir=${DESTDIR} \
		--plugindir=${TRUEPREFIX}/libexec/mcollective/
	mv ${WRKINST}${SYSCONFDIR}/mcollective \
		${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-mcollective/

.include <bsd.port.mk>
