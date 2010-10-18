# $OpenBSD: Makefile,v 1.16 2010/10/18 17:06:06 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to iconv() codeset conversion function

DISTNAME=	Text-Iconv-1.7
REVISION=	0
CATEGORIES=	converters
MODULES=	converters/libiconv cpan

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


CONFIGURE_ARGS=	INC="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"
		USE_GROFF =	Yes

.include <bsd.port.mk>
