# $OpenBSD: Makefile,v 1.4 2008/09/08 09:55:16 jasper Exp $

COMMENT=	event-based FTP server on a virtual filesystem

MODULES=	cpan
DISTNAME=	POE-Component-Server-FTP-0.08
CATEGORIES=	net

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
