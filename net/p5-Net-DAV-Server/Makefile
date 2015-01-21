# $OpenBSD: Makefile,v 1.12 2015/01/21 14:40:10 sthen Exp $

COMMENT=	perl module to provide a DAV server

MODULES=	cpan
DISTNAME=	Net-DAV-Server-1.302
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	databases/p5-DBD-SQLite \
		devel/p5-Class-Accessor \
		devel/p5-File-Slurp \
		devel/p5-File-Find-Rule-Filesys-Virtual \
		textproc/p5-XML-LibXML \
		www/p5-libwww
TEST_DEPENDS=devel/p5-Test-Pod

.include <bsd.port.mk>
