# $OpenBSD: Makefile,v 1.6 2002/03/21 20:46:24 espie Exp $

DISTNAME=	sybperl-2.13
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl
NEED_VERSION=	1.515

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"Sybase database access in Perl"
HOMEPAGE=	http://www.mbay.net/~mpeppler/
MASTER_SITES=	${HOMEPAGE}Sybperl/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

MODULES=	gettext
LIB_DEPENDS=	tds.0,sybdb.0,ct.0::databases/freetds

CONFIGURE_STYLE= perl
CONFIGURE_ENV=	SYBASE="${LOCALBASE}"

.include <bsd.port.mk>
