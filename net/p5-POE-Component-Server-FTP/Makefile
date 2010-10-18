# $OpenBSD: Makefile,v 1.5 2010/10/18 18:36:56 espie Exp $

COMMENT=	event-based FTP server on a virtual filesystem

MODULES=	cpan
DISTNAME=	POE-Component-Server-FTP-0.08
CATEGORIES=	net
USE_GROFF =	Yes

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-IO-stringy \
		::devel/p5-POE \
		::sysutils/p5-Filesys-Virtual

.include <bsd.port.mk>
