# $OpenBSD: Makefile,v 1.22 2013/03/11 11:44:46 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the GNOME GHTTP library

MODULES=	cpan
DISTNAME=	HTTP-GHTTP-1.07
REVISION=	4
CATEGORIES=	www
USE_GROFF =	Yes

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ghttp>=1

LIB_DEPENDS=	www/libghttp

.include <bsd.port.mk>
