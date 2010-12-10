# $OpenBSD: Makefile,v 1.9 2010/12/10 10:55:51 jasper Exp $

COMMENT=	perl module to provide a DAV server

MODULES=	cpan
DISTNAME=	Net-DAV-Server-1.301
CATEGORIES=	net
USE_GROFF =	Yes

# same as perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	databases/p5-DBD-SQLite \
		devel/p5-Class-Accessor \
		devel/p5-File-Slurp \
		devel/p5-File-Find-Rule-Filesys-Virtual \
		textproc/p5-XML-LibXML \
		www/p5-libwww
REGRESS_DEPENDS=devel/p5-Test-Pod

.include <bsd.port.mk>
