# $OpenBSD: Makefile,v 1.7 2004/07/10 15:29:30 kevlo Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"interface to iconv() codeset conversion function"

DISTNAME=	Text-Iconv-1.3
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
CONFIGURE_ARGS=	INC="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
