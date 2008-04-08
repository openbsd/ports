# $OpenBSD: Makefile,v 1.6 2008/04/08 01:58:39 mcbride Exp $

COMMENT=	centralised configuration management for networks

VERSION=	0.24.4
DISTNAME=	puppet-${VERSION}
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	sysutils net
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://reductivelabs.com/projects/puppet/
MASTER_SITES=	http://reductivelabs.com/downloads/puppet/

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby
LIB_DEPENDS=	::sysutils/ruby-facter

NO_REGRESS=	Yes
NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ruby-puppet
	@cd ${WRKSRC} && ${ALL_FAKE_FLAGS} ${RUBY} install.rb
	for f in `ls -1 ${WRKSRC}/examples/root/etc/puppet/*.conf`; do \
		${INSTALL_DATA} $$f ${PREFIX}/share/examples/ruby-puppet; \
	done

.include <bsd.port.mk>
