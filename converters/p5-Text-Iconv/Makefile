# $OpenBSD: Makefile,v 1.5 2002/12/29 19:37:52 fgsch Exp $

COMMENT=	"interface to iconv() codeset conversion function"

DISTNAME=	Text-Iconv-1.2
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Text/}

MODULES=	iconv

CONFIGURE_STYLE= perl
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
