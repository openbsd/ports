# $OpenBSD: Makefile,v 1.1.1.1 2001/08/18 03:58:41 kevlo Exp $

COMMENT=	"interface to iconv() codeset conversion function"

DISTNAME=	Text-Iconv-1.2
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters perl5
NEED_VERSION=	1.439

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Text

LIB_DEPENDS=    iconv.2::converters/libiconv

CONFIGURE_STYLE= perl
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
