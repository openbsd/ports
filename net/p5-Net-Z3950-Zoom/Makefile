# $OpenBSD: Makefile,v 1.7 2009/03/16 21:29:34 sthen Exp $

SHARED_ONLY=	Yes
COMMENT=	perl interface to yaz zoom
CATEGORIES=	net

DISTNAME=	Net-Z3950-ZOOM-1.25
PKGNAME=	p5-${DISTNAME}p0

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::converters/p5-MARC-Record
LIB_DEPENDS=	yaz::net/yaz

WANTLIB += exslt gcrypt gpg-error m pthread xml2 xslt z

MODULES=	cpan \
		devel/gettext

.include <bsd.port.mk>
