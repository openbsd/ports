# $OpenBSD: Makefile,v 1.3 2001/09/15 23:26:38 jcs Exp $

DISTNAME=	sybperl-2.13
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl
NEED_VERSION=	1.435

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"Sybase database access in Perl"
HOMEPAGE=	http://www.mbay.net/~mpeppler/
MASTER_SITES=	${HOMEPAGE}Sybperl/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

LIB_DEPENDS=	intl.1::devel/gettext \
		tds.0::databases/freetds

CONFIGURE_STYLE= perl
CONFIGURE_ENV=	SYBASE="${LOCALBASE}"

.include <bsd.port.mk>
