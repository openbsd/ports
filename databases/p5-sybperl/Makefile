# $OpenBSD: Makefile,v 1.11 2004/01/17 15:58:07 naddy Exp $

DISTNAME=	sybperl-2.16
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Sybase database access in Perl"
HOMEPAGE=	http://www.mbay.net/~mpeppler/
MASTER_SITES=	http://www.peppler.org/downloads/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

MODULES=	gettext
LIB_DEPENDS=	tds.3,sybdb.4,ct.2::databases/freetds

CONFIGURE_STYLE= perl
CONFIGURE_ENV=	SYBASE="${LOCALBASE}"
NO_REGRESS=	Yes

.include <bsd.port.mk>
