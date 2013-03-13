# $OpenBSD: Makefile,v 1.4 2013/03/13 13:33:51 jasper Exp $

PKG_ARCH=	*

COMMENT=	framework for server orchestration/parallel job execution

DISTNAME=	mcollective-2.3.0

CATEGORIES=	sysutils

HOMEPAGE=	http://www.puppetlabs.com/mcollective

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.puppetlabs.com/mcollective/
EXTRACT_SUFX=	.tgz

RUN_DEPENDS=	net/ruby-stomp,${MODRUBY_FLAVOR} \
		converters/ruby-json,${MODRUBY_FLAVOR} \
		devel/ruby-systemu,${MODRUBY_FLAVOR}

NO_BUILD=	Yes
NO_TEST=	Yes

MODULES=	lang/ruby

MODRUBY_ADJ_FILES=mco mcollectived mc-*

# Makefile is in ext/
MAKE_FILE=	ext/Makefile

post-configure:
.for i in json systemu
	rm -r ${WRKSRC}/lib/mcollective/vendor/${i}/ \
		${WRKSRC}/lib/mcollective/vendor/load_${i}.rb
.endfor
	${SUBST_CMD} ${WRKSRC}/etc/server.cfg.dist \
		${WRKSRC}/etc/client.cfg.dist

.include <bsd.port.mk>
