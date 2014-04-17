# $OpenBSD: Makefile,v 1.17 2014/04/17 18:12:09 jasper Exp $

COMMENT=	framework for server orchestration/parallel job execution

DISTNAME=	mcollective-2.4.1
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
NO_BUILD=	Yes
NO_TEST=	Yes
SUBST_VARS +=	RUBY

MODRUBY_ADJ_FILES=mco mcollectived mc-call-agent

MAKE_FILE=	ext/Makefile

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ext/Makefile \
		${WRKSRC}/etc/server.cfg.dist \
		${WRKSRC}/etc/client.cfg.dist \

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/{libexec,share/doc}/mcollective \
		${PREFIX}/${MODRUBY_SITEDIR}

.include <bsd.port.mk>
