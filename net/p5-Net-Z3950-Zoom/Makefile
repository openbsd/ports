# $OpenBSD: Makefile,v 1.4 2008/09/02 14:10:22 jasper Exp $

SHARED_ONLY=	Yes
COMMENT=	perl interface to yaz zoom
CATEGORIES=	net

DISTNAME=	Net-Z3950-ZOOM-1.24

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::converters/p5-MARC-Record
LIB_DEPENDS=	yaz::net/yaz

WANTLIB=	crypto exslt gcrypt gpg-error m pthread \
		ssl xml2 xslt z

MODULES=	cpan \
		devel/gettext

.include <bsd.port.mk>
