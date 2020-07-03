# $OpenBSD: Makefile,v 1.16 2020/07/03 21:45:32 sthen Exp $

COMMENT=	perl module to provide a DAV server

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Net-DAV-Server-1.305
CATEGORIES=	net
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	databases/p5-DBD-SQLite \
		devel/p5-Class-Accessor \
		devel/p5-File-Slurp \
		devel/p5-File-Find-Rule-Filesys-Virtual \
		textproc/p5-XML-LibXML \
		www/p5-libwww
TEST_DEPENDS=devel/p5-Test-Pod

.include <bsd.port.mk>
