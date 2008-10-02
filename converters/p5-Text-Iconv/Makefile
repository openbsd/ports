# $OpenBSD: Makefile,v 1.13 2008/10/02 20:32:44 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to iconv() codeset conversion function

DISTNAME=	Text-Iconv-1.4
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	converters
MODULES=	converters/libiconv cpan

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


CONFIGURE_ARGS=	INC="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
