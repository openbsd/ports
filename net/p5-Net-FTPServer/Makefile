# $OpenBSD: Makefile,v 1.14 2019/02/10 12:58:02 sthen Exp $

COMMENT=	secure, extensible and configurable Perl FTPd

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-FTPServer-1.125
CATEGORIES=	net

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	archivers/p5-Archive-Zip \
		databases/p5-DBI \
		devel/p5-BSD-Resource \
		devel/p5-File-Sync \
		devel/p5-IO-stringy

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

FAKE_FLAGS=		NOCONF=1
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	etc

.include <bsd.port.mk>
