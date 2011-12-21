# $OpenBSD: Makefile,v 1.2 2011/12/21 19:34:28 jasper Exp $

PKG_ARCH=	*

COMMENT=	framework for server orchestration/parallel job execution

DISTNAME=	mcollective-1.3.0
REVISION=	0

CATEGORIES=	sysutils

HOMEPAGE=	http://www.puppetlabs.com/mcollective
MASTER_SITES=	http://downloads.puppetlabs.com/mcollective/
EXTRACT_SUFX=	.tgz

# GFDL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	net/ruby-stomp \
		converters/ruby-json \
		devel/ruby-systemu

NO_BUILD=	Yes
NO_REGRESS=	Yes

MODULES=	lang/ruby

MODRUBY_ADJ_FILES=mco mcollectived.rb mc-*

# Makefile is in ext/
MAKE_FILE=	ext/Makefile

post-configure:
.for i in json systemu
	@rm -rf ${WRKSRC}/lib/mcollective/vendor/${i}/ \
		${WRKSRC}/lib/mcollective/vendor/load_${i}.rb
.endfor
	${SUBST_CMD} ${WRKSRC}/etc/server.cfg.dist \
		${WRKSRC}/etc/client.cfg.dist

.include <bsd.port.mk>
