COMMENT=	secure, extensible and configurable Perl FTPd

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-FTPServer-1.125
CATEGORIES=	net
REVISION=	0

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	archivers/p5-Archive-Zip \
		databases/p5-DBI \
		devel/p5-BSD-Resource \
		devel/p5-File-Sync \
		devel/p5-IO-stringy

# GPLv2+
PERMIT_PACKAGE=	Yes

FAKE_FLAGS=		NOCONF=1
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	etc

.include <bsd.port.mk>
