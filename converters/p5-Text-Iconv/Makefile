# $OpenBSD: Makefile,v 1.10 2004/11/11 17:16:11 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	"interface to iconv() codeset conversion function"

DISTNAME=	Text-Iconv-1.4
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Text/}

MODULES=	converters/libiconv

CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	INC="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
