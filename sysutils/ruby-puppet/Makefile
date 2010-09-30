# $OpenBSD: Makefile,v 1.19 2010/09/30 15:39:11 jasper Exp $

COMMENT=	centralised configuration management for networks

VERSION=	0.25.5
DISTNAME=	puppet-${VERSION}
PKGNAME=	ruby-${DISTNAME}
REVISION=	2
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
RUN_DEPENDS=	::converters/ruby-json \
		::sysutils/ruby-facter \
		${MODRUBY_ICONV_DEPENDS}

NO_REGRESS=	Yes
NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ruby-puppet
	@cd ${WRKSRC} && ${ALL_FAKE_FLAGS} ${RUBY} install.rb
	for f in `ls -1 ${WRKSRC}/examples/etc/puppet/*.conf`; do \
		${INSTALL_DATA} $$f ${PREFIX}/share/examples/ruby-puppet; \
	done

.include <bsd.port.mk>
