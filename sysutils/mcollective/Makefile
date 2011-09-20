# $OpenBSD: Makefile,v 1.1 2011/09/20 14:03:20 uwe Exp $

PKG_ARCH=	*

COMMENT=	framework for server orchestration/parallel job execution

DISTNAME=	mcollective-1.3.0

CATEGORIES=	sysutils

HOMEPAGE=	http://www.puppetlabs.com/mcollective
MASTER_SITES=	http://downloads.puppetlabs.com/mcollective/
EXTRACT_SUFX=	.tgz

# GFDL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	net/ruby-stomp

NO_BUILD=	Yes
NO_REGRESS=	Yes

MODULES=	lang/ruby

MODRUBY_ADJ_FILES=mco mcollectived.rb mc-*

# makefile is in ext/
MAKE_FILE=ext/Makefile

post-configure:
	${SUBST_CMD} ${WRKSRC}/etc/server.cfg.dist

# Prevent patch/subst_cmd leftovers from ending up in PLIST
pre-install:
	rm ${WRKSRC}/etc/server.cfg.dist.*

.include <bsd.port.mk>
