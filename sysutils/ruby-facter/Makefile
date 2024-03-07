COMMENT =	system inventory tool

DISTNAME =	facter-4.6.1
CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/puppetlabs/facter
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS +=	${RUN_DEPENDS}

RUN_DEPENDS += devel/ruby-ffi,${MODRUBY_FLAVOR}=1.15.5 \
		devel/ruby-hocon,${MODRUBY_FLAVOR}>=1.3,<2 \
		devel/ruby-thor,${MODRUBY_FLAVOR}>=1.0.1,<2

CONFIGURE_STYLE =	ruby gem

post-patch:
	cp -r ${FILESDIR}/facts ${WRKSRC}/lib/facter/facts/openbsd
	cp -r ${FILESDIR}/resolvers ${WRKSRC}/lib/facter/resolvers/openbsd
	find ${WRKSRC}/lib/facter -name CVS -type d -exec rm -rf {} \; || true

.include <bsd.port.mk>
