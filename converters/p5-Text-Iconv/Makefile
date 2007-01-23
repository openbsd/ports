# $OpenBSD: Makefile,v 1.11 2007/01/23 22:30:51 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"interface to iconv() codeset conversion function"

DISTNAME=	Text-Iconv-1.4
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
