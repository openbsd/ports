# $OpenBSD: Makefile,v 1.29 2011/03/09 10:31:52 robert Exp $

COMMENT=	centralised configuration management for networks

VERSION=	2.6.5
DISTNAME=	puppet-${VERSION}
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	sysutils net

HOMEPAGE=	http://reductivelabs.com/projects/puppet/
MASTER_SITES=	http://reductivelabs.com/downloads/puppet/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/ruby-json \
		sysutils/ruby-facter \
		${MODRUBY_ICONV_DEPENDS}

USE_GROFF =	Yes
NO_REGRESS=	Yes
NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${MODRUBY_EXAMPLEDIR}/puppet
	@cd ${WRKSRC} && ${ALL_FAKE_FLAGS} ${RUBY} install.rb
	for f in `ls -1 ${WRKSRC}/examples/etc/puppet/*.conf`; do \
		${INSTALL_DATA} $$f ${MODRUBY_EXAMPLEDIR}/puppet; \
	done

.include <bsd.port.mk>
